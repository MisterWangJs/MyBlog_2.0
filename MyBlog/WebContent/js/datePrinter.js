var _datePrinter_tmpl_CN = "<tr><th>一</th><th>二</th><th>三</th><th>四</th><th>五</th><th>六</th><th>日</th></tr>";
var _datePrinter_tmpl_EN = "<tr><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th><th>Sun</th></tr>";

Date.prototype.Format = function (fmt) { //author: meizz   
    var o = {
        "M+": this.getMonth() + 1,                 //月份   
        "d+": this.getDate(),                    //日   
        "h+": this.getHours(),                   //小时   
        "m+": this.getMinutes(),                 //分   
        "s+": this.getSeconds(),                 //秒   
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度   
        "S": this.getMilliseconds()             //毫秒   
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

$.widget("ui.datePrinter", {
    options: {
        initDate: null,
        language: null, // CN,EN
        resizable: false,
        draggable: false,
        width: "240px",
        dateFormat:'yyyy/MM/dd',
        getColor: null,  //自定义颜色
        showYearAndMonth: false,
        chooseDone: function (selectDate) { return selectDate }, //选中日期后执行的自定义事件
        autoId:null //控件Id
    },
    _dpTable: null,
    _dpRoot:null,
    _selectDate:null, //选中日期
    _create: function () {
        var self = this, option = this.options, ele = this.element;
        option.autoId = self._newGuid();
        $(ele).after("<div class='dpRoot' id='" + option.autoId + "'></div>");
        self._dpRoot = $(ele).parent().find('#' + option.autoId);
        self._dpRoot.css("left", $(ele)[0].offsetLeft).css('top', $(ele)[0].offsetTop + Number($(ele)[0].offsetHeight));
        //self._dpRoot.empty();

        self._dpRoot.append("<div class='dpTitle' style='text-align:right;background-color:#e8edf4; width:" + option.width +
            "'><select class='selYear'></select><select class='selMonth'></select><a style='color:#000;text-decoration:none;font-size:18px;padding-left:10px; padding-right:10px;width:10px;' href='javascript:void(0);'>x</a></div>");
        self._dpRoot.append("<table style='width:" + option.width + "' cellspacing='0'></table>");

        return self;
    },
    _init: function () {
        var self = this, option = this.options, ele = this.element;
        if (option.initDate && typeof option.initDate == 'string')
            option.initDate = new Date(option.initDate.replace("-", "/"));

        //初始化日历
        self._initDate();

        if (option.resizable)
            self._dpRoot.resizable({
                minHeight: self._dpRoot.css("height").replace("px",''),
                minWidth:option.width.replace("px",''),
                resize: function (event, ui) {
                    var titleHeight = self._dpRoot.find("div.dpTitle").css("height").replace("px", "");

                    //最小值时不再缩小
                    if (ui.size.width >= Number(option.width.replace("px",''))) {
                        $(ui.element).find("table").css({ "width": ui.size.width, "height": ui.size.height - titleHeight, "text-align": "center" });
                        $(ui.element).find("div.dpTitle").css({ "width": ui.size.width });
                    }
                }
            });

        if(option.draggable)
            self._dpRoot.draggable();

        //关闭按钮事件
        self._dpRoot.find("div.dpTitle > a").bind("click", function () {
            $.proxy(self.dpHide(), self);
        });

        if (option.showYearAndMonth) {
            self._initSelYear();
            self._initSelMonth();
        }

        //点击事件
        self._dpTable.delegate("td","click", function (e) {
            var selectDay = $(this).text();
            if (!$(this).hasClass("dpBlank")) {
                self._dpTable.find("td").removeClass("today");
                $(this).addClass("today");
                //控件设置值
                self._setDate(selectDay);

                if (option.chooseDone && typeof (option.chooseDone) == 'function')
                    $.proxy(option.chooseDone(self._selectDate), self);
            }
        });

        //$(ele).focus(function () {
        //    self.dpShow();
        //});

        $(ele).click(function () {
            self.dpShow();
        });

        //$(ele).blur(function (e) {
        //    if ($(e.target).closest('div.dpRoot').length == 0) {
        //        self.dpHide();
        //    }
        //});
        return self;
    },

    _destroy: function () {
        var self = this, option = this.options, ele = this.element;
        self._dpRoot.empty();
        this._prototype._destroy.call(self);
    },

    _getColor: function (date) {
        var styleName = null;
        if (date == 3 || date == 5 || date == 12)
            styleName = "dpdisabled";
        else if (date == 20 || date == 23 || date == 27)
            styleName = "dpyellow";
        else
            styleName = "dpenable";

        return styleName;
    },

    _initSelYear: function () {
        var self = this, option = this.options, ele = this.element;
        //根据初始化设置时间计算
        var today = option.initDate ? option.initDate : new Date();
        this.options.initDate = today;
        var y = today.getFullYear(),
        m = today.getMonth();

        //打印年 + - 10
        for (var i = 0; i < 20; i++) {
            var varSel = (y == (y + i - 10)) ? "selected='selected'" : "";
            self._dpRoot.find("select.selYear").show().append("<option value='" + (y + i - 10) + "' " + varSel + ">" + (y + i - 10) + "</option");
        }

        //年事件
        self._dpRoot.find("select.selYear").bind("change", function () {
            option.initDate = new Date(option.initDate.setYear($(this).val()));
            self._initDate();
        });
    },

    _initSelMonth: function () {
        var self = this, option = this.options, ele = this.element;
        //根据初始化设置时间计算
        var today = option.initDate ? option.initDate : new Date();
        this.options.initDate = today;
        var y = today.getFullYear(),
        m = today.getMonth();
        //打印月
        for (var i = 0; i < 12; i++) {
            var varSel = (m == i) ? "selected='selected'" : "";
            self._dpRoot.find("select.selMonth").show().append("<option value='" + (i + 1) + "' " + varSel + ">" + (i + 1) + "</option");
        }

        //月事件
        self._dpRoot.find("select.selMonth").bind("change", function () {
            var selMon = Number($(this).val()) - 1;
            option.initDate = new Date(option.initDate.setMonth(selMon));
            self._initDate();
        });
    },

    _initDate: function () {
        var self = this, option = this.options, ele = this.element;

        self._dpTable = self._dpRoot.find("table");
        self._dpTable.empty();
        if (option.language == "EN") {
            self._dpTable.wrapInner(_datePrinter_tmpl_EN);
        }

        //默认获取当前日期
        var today = option.initDate ? option.initDate : new Date();
        self._selectDate = today;
        this.options.initDate = today;
        //获取日期中的年份
        var y = today.getFullYear(),
        //获取日期中的月份(需要注意的是：月份是从0开始计算，获取的值比正常月份的值少1)
        m = today.getMonth(),
        //获取日期中的日(方便在建立日期表格时高亮显示当天)
        d = today.getDate(),
        //获取当月的第一天
        firstday = new Date(y, m, 1),
        //判断第一天是星期几(返回[0-6]中的一个，0代表星期天，1代表星期一，以此类推)
        dayOfWeek = firstday.getDay() == 0 ? 7 : firstday.getDay(),
        //创建月份数组
        days_per_month = new Array(31, 28 + self._isLeap(y), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31),
        //确定日期表格所需的行数
        str_nums = Math.ceil((dayOfWeek + days_per_month[m] - 1) / 7);
        //二维数组创建日期表格
        for (i = 0; i < str_nums; i += 1) {
            var tr = '<tr>';
            for (k = 0; k < 7; k++) {
                //为每个表格创建索引,从0开始
                var idx = 7 * i + k;
                //将当月的1号与星期进行匹配
                var day = idx - dayOfWeek +2;
                var styleName = self._getColor(day);
                if (option.getColor && typeof (option.getColor) == 'function')
                    styleName = option.getColor(day);
                styleName += " dateTD";

                (day <= 0 || day > days_per_month[m]) ?
                //索引小于等于0或者大于月份最大值就用空表格代替
                (day = ' ', styleName = "dpBlank") : (day = idx - dayOfWeek + 2);
                day == d ? tr += '<td class="' + styleName + ' today">' + day + '</td>' :
                //高亮显示当天
                tr += '<td  class="' + styleName + '">' + day + '</td>';
            }
            tr += '</tr>';
            self._dpTable.append(tr);
            tr = "";
        }
    },

    _isLeap: function (year) {
        var self = this, option = this.options, ele = this.element;
        return year % 4 == 0 ? (year % 100 != 0 ? 1 : (year % 400 == 0 ? 1 : 0)) : 0;
    },

    //选中日期时设置选中值 day为currentDate当月的第几日
    _setDate: function (day) {
        var self = this, option = this.options, ele = this.element;
        self._selectDate = new Date(option.initDate.getFullYear() + '/' + (option.initDate.getMonth() + 1) + '/' + day);
        //设置输入框值
        $(ele).val(self.getSelectDate(), self);
    },

    //获取所选日期
    getSelectDate: function () {
        var self = this, option = this.options, ele = this.element;
        return self._selectDate.Format(option.dateFormat);
    },

    //显示
    dpShow: function () {
        var self = this, option = this.options, ele = this.element;
        $("div.dpRoot").hide();
        self._dpRoot.show();
    },
    
    //隐藏
    dpHide: function () {
        var self = this, option = this.options, ele = this.element;
        self._dpRoot.hide();
    },

    //new Guid
    _newGuid: function () {
        var guid = "";
        for (var i = 1; i <= 32; i++) {
            var n = Math.floor(Math.random() * 16.0).toString(16);
            guid += n;
            if ((i == 8) || (i == 12) || (i == 16) || (i == 20)) {
                //guid += "-";
            }
        }
        return guid;
    }

});