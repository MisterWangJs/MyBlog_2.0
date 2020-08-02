<%@page import="wjs.blog.domain.Blog"%>
<%@page import="wjs.blog.dao.impl.BlogDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.IBlogDao"%>
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
	String id = request.getParameter("bid");
	int bid = Integer.parseInt(id);

	IBlogDao blogDao = new BlogDaoJDBCImpl();
	
	Blog b = blogDao.findByBId(bid);
	pageContext.setAttribute("b",b,pageContext.REQUEST_SCOPE);
	

%>
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">博客信息修改页面</p>
            <div class="block-body">
             
                    <form onsubmit="return formCheck()" method="post" action="../blog_modify">
					<input type="hidden" value="${b.getBid()}" name="bid" class="input-xlarge" />
                    <label>博客标题</label>
                    <input name="title"  value="${b.getTitle()}"type="text" class="span12" required>
                    <label>博客内容</label>
                    <textarea rows="5" cols="10" name="content">${b.getContent() }</textarea>   
                    <label>发表人</label>
                    <input name="author" value="${b.getAuthor()}" type="text" class="span12" required>
                    <label>发表时间</label>
                    <input name="pubtime" value="${b.getPubtime()}" type="text" class="span12" required>
                    <label>博客类型</label>
                    <input name="type" value="${b.getType()}" type="text" class="span12" required>
                    
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