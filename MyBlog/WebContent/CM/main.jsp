<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    	<title>MyBlog信息管理后台</title>
	</head>

	<frameset rows="4%,*,3%" border="1" framespacing="0" >
		<frame name="top" src="top.jsp" scrolling="no"/>
		
		<frameset cols="13%,*" border="1" framespacing="0" >
			<frame name="menu" src="menu.jsp" scrolling="no"/>
			<frame name="content" src="content.jsp" />
		</frameset>
		
		<frame name="footer" src="footer.jsp" scrolling="no" />
	</frameset><noframes></noframes>
</html>
