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
<title>用户信息修改页面</title>
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
	
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">博客发表页面</p>
            <div class="block-body">
                <form onsubmit="return formCheck()" method="post" action="../blog_add">
					<input type="hidden" name="bid" class="input-xlarge" />
                    <label>博客标题</label>
                    <input name="title" type="text" class="span12" required>
                    <label>博客内容</label>
                    <textarea rows="5" cols="10" name="content"></textarea>   
                    <label>发表人</label>
                    <input name="author" type="text" class="span12" required>
                    <label>博客类型</label>
                    <input name="type" type="text" class="span12" required>
                                
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