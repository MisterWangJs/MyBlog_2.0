<%@page import="wjs.blog.domain.GuestBook"%>
<%@page import="wjs.blog.dao.impl.GuestBookDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.IGuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">
<title>用户信息修改页面</title>
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
	

<%
	//得到要修改用户的序号
	String gid = request.getParameter("guestid");
	int guestid = Integer.parseInt(gid);

	IGuestBookDao gbDao = new GuestBookDaoJDBCImpl();
	
	GuestBook g = gbDao.findByGId(guestid);
	pageContext.setAttribute("g",g,pageContext.REQUEST_SCOPE);

%>
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">留言信息修改页面</p>
            <div class="block-body">
                <form onsubmit="return formCheck()" method="post" action="../guestbook_modify">
					<input type="hidden" name="guestid" class="input-xlarge" value="${ g.getGuestid()}"/>
                    <label>留言姓名</label>
                    <input id="guestname"onfocus="setStyle(this.id)" name="guestname" value="${ g.getGuestname()}" type="text" class="span12" required>
                    <label>留言邮箱</label>
                    <input id="guestemail"onfocus="setStyle(this.id)" name="guestemail" value="${g.getGuestemail()}" type="text" class="span12">
                    
                    <label>留言内容</label>
                    <textarea rows="5" cols="10" name="guestcontent">${g.getGuestcontent()}</textarea> 
                    <label>留言时间</label>
                    <input id="sendtime"onfocus="setStyle(this.id)"name="sendtime" value="${g.getSendtime()}" type="text" class="span12" maxlength="11" required>
                   

                   
                    <input type="submit" class="btn btn-primary pull-right" value="修改" />
                    <br><br>
                   
                </form>
            </div>
        </div>
       
    </div>
</div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body>
</html>