<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Blog AboutMe</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="MisterWang个人博客" />
<link href="css/base.css" rel="stylesheet">
<link href="css/about.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->

</head>
<body>
<header>
  <div id="logo"><a href="#"></a></div>
  <nav class="topnav" id="topnav">
 			<a href="index.jsp"><span>首页</span><span class="en">Index</span></a>
 			<a href="http://fengshuaihu.cn/" target='_blank' style="color:red"><span>通向另一个世界</span><span class="en">铁子私人博客，欢迎光临！</span></a>
  			<a href="aboutme.jsp"><span>关于我</span><span class="en">AboutMe</span></a>
  			<a href="SayingListServlet"><span>碎言碎语</span><span class="en">SaySay</span></a>
  			<a href="GuestBookListServlet"><span>留言版</span><span class="en">GuestBook</span></a>
  			<a href="mytime.jsp"><span>A Clock</span><span class="en">网红Clock</span></a>
  </nav>
</header>
<article class="aboutcon">
<h1 class="t_nav"><span>低调的存在，冬去春来，枯荣无恙。</span><a href="index.jsp" class="n1">网站首页</a><a href="aboutme.jsp" class="n2">关于我</a></h1>
<div class="about left">
  <h2>Just about me</h2>
    <ul> 
    	<li>
    	<div id="misterwang" style="margin: 9px 0 0 2px; font-size:25px;"></div> <script>var misterwang = function (r) {
    function t() {
        return b[Math.floor(Math.random() * b.length)]
    }
    function e() {
        return String.fromCharCode(94 * Math.random() + 33)
    }
    function n(r) {
        for (var n = document.createDocumentFragment(), i = 0; r > i; i++) {
            var l = document.createElement("span");
            l.textContent = e(), l.style.color = t(), n.appendChild(l)
        }
        return n
    }
    function i() {
        var t = o[c.skillI];
        c.step ? c.step-- : (c.step = g, c.prefixP < l.length ? (c.prefixP >= 0 && (c.text += l[c.prefixP]), c.prefixP++) : "forward" === c.direction ? c.skillP < t.length ? (c.text += t[c.skillP], c.skillP++) : c.delay ? c.delay-- : (c.direction = "backward", c.delay = a) : c.skillP > 0 ? (c.text = c.text.slice(0, -1), c.skillP--) : (c.skillI = (c.skillI + 1) % o.length, c.direction = "forward")), r.textContent = c.text, r.appendChild(n(c.prefixP < l.length ? Math.min(s, s + c.prefixP) : Math.min(s, t.length - c.skillP))), setTimeout(i, d)
    }
    /*以下内容自定义修改*/
    var l = "I love",
        o = [" eating.", " drinking.", " playing.", " sleeping."].map(function (r) 
        {
            return r + ""
        }), a = 2, g = 1, s = 5, d = 75,
        b = ["rgb(110,64,170)", "rgb(150,61,179)", "rgb(191,60,175)", "rgb(228,65,157)", "rgb(254,75,131)", "rgb(255,94,99)", "rgb(255,120,71)", "rgb(251,150,51)", "rgb(226,183,47)", "rgb(198,214,60)", "rgb(175,240,91)", "rgb(127,246,88)", "rgb(82,246,103)", "rgb(48,239,130)", "rgb(29,223,163)", "rgb(26,199,194)", "rgb(35,171,216)", "rgb(54,140,225)", "rgb(76,110,219)", "rgb(96,84,200)"],
        c = {text: "", prefixP: -s, skillI: 0, skillP: 0, direction: "forward", delay: a, step: g};
    i()
};
misterwang(document.getElementById('misterwang'));</script>
    	</li>
		<li>没啥可介绍的！</li>
		<li>看看别的！</li>
		<li>我就是我！</li>
		<li>不一样的烟火！</li>
		<li>哈哈啊哈！</li>
    </ul>
    <h2><a href="login.jsp">About My Blog</a></h2> 
    <p>
    	<b style="font-size:20px;">网站稳定运行：</b><SPAN id=span_dt_dt style="color: #2F889A; font-size:20px;"></SPAN> <SCRIPT language=javascript>function show_date_time(){
                        window.setTimeout("show_date_time()", 1000);
                        BirthDay=new Date("1/12/2020 0:0:0");
                        today=new Date();
                        timeold=(today.getTime()-BirthDay.getTime());
                        sectimeold=timeold/1000
                        secondsold=Math.floor(sectimeold);
                        msPerDay=24*60*60*1000
                        e_daysold=timeold/msPerDay
                        daysold=Math.floor(e_daysold);
                        e_hrsold=(e_daysold-daysold)*24;
                        hrsold=Math.floor(e_hrsold);
                        e_minsold=(e_hrsold-hrsold)*60;
                        minsold=Math.floor((e_hrsold-hrsold)*60);
                        seconds=Math.floor((e_minsold-minsold)*60);
                        span_dt_dt.innerHTML='<font style=color:#C40000>'+daysold+'</font> 天 <font style=color:#C40000>'+hrsold+'</font> 时 <font style=color:#C40000>'+minsold+'</font> 分 <font style=color:#C40000>'+seconds+'</font> 秒';
                        }
                        show_date_time();</script> 
    </p>
    <p>域  名：www.misterwangjs.cn</p>
    <p>服务器：腾讯云服务器</p>
    <p>备案号：豫ICP备19038774号-1</p>
    <p>IDE： Eclipse Tomcat8.0 </p>
</div>
<aside class="right">  
    <div class="about_c">
    <p>网名：<span>Mister丶Wang</span></p>
    <p>姓名：汪京生 </p>
    <p>生日：1997-05-01</p>
    <p>现居：北京</p>
    <p>职业：在读学生</p>


<br>
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=40816673&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:888888:52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
<br>
<a target="_blank" href="https://jq.qq.com/?_wv=1027&k=5DMRxIS">
<img src="http://pub.idqqimg.com/wpa/images/group.png" alt="点击这里加入qq群" title="点击这里加入qq群"></a>
<br>
<a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_22.png" alt="点击这里给我发邮件" title="点击这里给我发邮件"/></a></div>     
</aside>
</article>

<footer class="topnav" id="topnav">
  <p style="font-weight:1000;font-size:20px;color:black;">Copyright © 2020 by <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><span style="color:blue;">Mister丶Wang</span><span>Contact us</span></a>All rights reserved.<a href="http://www.beian.miit.gov.cn/" target="_blank" >豫ICP备19038774号</a></p>
</footer>

<script src="js/silder.js"></script>

  <script>
!function(){function n(n,e,t){return n.getAttribute(e)||t}function e(n){return document.getElementsByTagName(n)}function t(){var t=e("script"),o=t.length,i=t[o-1];return{l:o,z:n(i,"zIndex",-1),o:n(i,"opacity",.5),c:n(i,"color","0,0,0"),n:n(i,"count",99)}}function o(){a=m.width=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth,c=m.height=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight}function i(){r.clearRect(0,0,a,c);var n,e,t,o,m,l;s.forEach(function(i,x){for(i.x+=i.xa,i.y+=i.ya,i.xa*=i.x>a||i.x<0?-1:1,i.ya*=i.y>c||i.y<0?-1:1,r.fillRect(i.x-.5,i.y-.5,1,1),e=x+1;e<u.length;e++)n=u[e],null!==n.x&&null!==n.y&&(o=i.x-n.x,m=i.y-n.y,l=o*o+m*m,l<n.max&&(n===y&&l>=n.max/2&&(i.x-=.03*o,i.y-=.03*m),t=(n.max-l)/n.max,r.beginPath(),r.lineWidth=t/2,r.strokeStyle="rgba("+d.c+","+(t+.2)+")",r.moveTo(i.x,i.y),r.lineTo(n.x,n.y),r.stroke()))}),x(i)}var a,c,u,m=document.createElement("canvas"),d=t(),l="c_n"+d.l,r=m.getContext("2d"),x=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(n){window.setTimeout(n,1e3/45)},w=Math.random,y={x:null,y:null,max:2e4};m.id=l,m.style.cssText="position:fixed;top:0;left:0;z-index:"+d.z+";opacity:"+d.o,e("body")[0].appendChild(m),o(),window.onresize=o,window.onmousemove=function(n){n=n||window.event,y.x=n.clientX,y.y=n.clientY},window.onmouseout=function(){y.x=null,y.y=null};for(var s=[],f=0;d.n>f;f++){var h=w()*a,g=w()*c,v=2*w()-1,p=2*w()-1;s.push({x:h,y:g,xa:v,ya:p,max:6e3})}u=s.concat([y]),setTimeout(function(){i()},100)}();
</script>    

</body>
</html>