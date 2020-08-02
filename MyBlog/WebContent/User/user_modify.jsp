<%@page import="wjs.blog.domain.User"%>
<%@page import="wjs.blog.dao.impl.UserDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.IUserDao"%>
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
	String uid = request.getParameter("id");
	int id = Integer.parseInt(uid);

	IUserDao userDao = new UserDaoJDBCImpl();
	
	User u = userDao.findById(id);
	pageContext.setAttribute("u",u,pageContext.REQUEST_SCOPE);
	

%>
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">用户信息修改页面</p>
            <div class="block-body">
                <form onsubmit="return formCheck()" method="post" action="../user_modify">
					<input type="hidden" name="id" class="input-xlarge" value="${u.getId()}"/>
                    <label>用户名</label>
                    <input id="username"onfocus="setStyle(this.id)" name="username" value="${u.getUsername()}" type="text" class="span12" required>
                    <label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <input id="password"onfocus="setStyle(this.id)"name="password" value="${u.getPassword()}" class="span12" required>
                
                    <label>姓&nbsp;&nbsp;&nbsp;名</label>
                    <input id="name"onfocus="setStyle(this.id)" name="name" value="${u.getName()}" type="text" class="span12" required>
                    
               		<br><br>
               		
                 <% if(u.getSex().equals("男")){ %>
                 
                   	性别：&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="sex" value="男"checked="checked">男<input type="radio" name="sex" value="女">女 
                  
                  <%} %><%else{ %>
                  
                   	性别：&nbsp;&nbsp;&nbsp;
                   <input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女" checked="checked">女 
                   
                     <%} %>
                    
                   
                    <br><br>
                  	
                  	
                    <label>邮&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                    <input id="email"onfocus="setStyle(this.id)" name="email" value="${	u.getEmail()}" type="text" class="span12" required>
                    <label>电&nbsp;&nbsp;&nbsp;&nbsp;话</label>
                    <input id="tel"onfocus="setStyle(this.id)"name="tel" value="${u.getTel()}" type="text" class="span12" maxlength="11" required>
                   

                   
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