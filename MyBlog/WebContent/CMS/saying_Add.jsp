<%@page import="wjs.blog.domain.Saying"%>
<%@page import="wjs.blog.dao.impl.SayDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.ISayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">
<title>说说发表页面</title>
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
	
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">说说发表页面</p>
            <div class="block-body">
                <form  enctype="multipart/form-data" onsubmit="return formCheck()" method="post" action="../say_add">	
                    <label>说说图片</label>
                    <input name="img" type="file" class="span12" required>
                    <label>说说内容</label>
                    <textarea rows="5" cols="10" type="text" name="saycontent"></textarea>               
                    <input type="submit" class="btn btn-primary pull-right" value="发送" />
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