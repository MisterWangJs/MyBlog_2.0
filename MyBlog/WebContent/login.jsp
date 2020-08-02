<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录MyBlog管理系统</title>
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="./js/jquery.js"></script>
<script src="./js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

	<!-- 自己添加的js代码 -->
	<script type="text/javascript">
		//验证码的更换
		function changeValidateCode() {
			document.getElementById("validateCode").src = "ValidateCodeServlet?rand=" + Math.random();
		}
	</script>
</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
   <!-- --> 
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    <form  method="post" action="login" >
    <ul>
    <li><input style="color:black" placeholder="输入账号" value="" name="username" type="text" class="loginuser"  onclick="JavaScript:this.value=''"/></li>
    <li><input style="color:black" placeholder="输入密码 " value=""name="password" type="password" class="loginpwd"  onclick="JavaScript:this.value=''"/></li>
    <li><input style="color:black" placeholder="验证码" name="validateCode" type="text" class="loginyzm"  onclick="JavaScript:this.value=''"/> <img id="validateCode" src="./ValidateCodeServlet" title="点击换一换" onclick="changeValidateCode()" CLASS="PULL-RIGHT">
			<a href="javascript:changeValidateCode();">看不清？</a><br><br></li>
    
   
    <li><input type="submit" class="loginbtn" value="登录" />
   
     ${requestScope.loginError}
   
    </ul>
    </div>
    </form>

    
    </div>
    
    
    
   			
</body>
</html>