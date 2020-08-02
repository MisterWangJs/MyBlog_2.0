<%@page import="wjs.blog.domain.Saying"%>
<%@page import="wjs.blog.utils.PageBeanSaying"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
	<head>
    <title>列表页面</title>

<script type="text/javascript">
function altRows(id){
    if(document.getElementsByTagName){  
        
        var table = document.getElementById(id);  
        var rows = table.getElementsByTagName("tr"); 
         
        for(i = 0; i < rows.length; i++){          
            if(i % 2 == 0){
                rows[i].className = "evenrowcolor";
            }else{
                rows[i].className = "oddrowcolor";
            }      
        }
    }
}

window.onload=function(){
    altRows('alternatecolor');
}
</script>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.altrowstable {
    font-family: verdana,arial,sans-serif;
    font-size:20px;
    color:#333333;
    border-width: 1px;
    border-color: #a9c6c9;
    border-collapse: collapse;
}
table.altrowstable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #a9c6c9;
}
table.altrowstable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #a9c6c9;
}
.oddrowcolor{
    background-color:#d4e3e5;
}
.evenrowcolor{
    background-color:#c3dde0;
}



ul{            
	display: table;           
	margin:40px auto;        
}        
li{           
 display: table-cell;            
 }
 ul li a{            
 text-decoration: none;            
 padding: 5px 8px;            
 background-color: #ddd;            
 color: #000;            
 margin-right: 1px;        
 }        
 ul li a:hover{            
 background-color: #ffcc00;            
 color: #fff;        
 }
</style>
  </head>
	
	
	
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

        <div class="header">
            <h1 class="page-title" align="center">我的说说列表</h1>
        </div>
    <hr style="border:2px solid #ccc">
<br>			<br>
<div class="well" align="center">
    <table class="altrowstable" id="alternatecolor" >
      <thead>
        <tr>
          <th>序号</th>
          <th>说说图片</th>
          <th>说说内容</th>
          <th>发送时间</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	
      <c:forEach var="say" items="${requestScope.pageBeanSaying.list}">

        <tr>
          <td>${say.sid }</td>
          <td style="width:150px;"> <img style="width:100px;height:100px;"src="${say.img}"></td>
          <td style="width:300px;">${say.saycontent}</td>
          <td>${say.saytime }</td>
          <td>
              <a style="text-decoration: none;color:red;" href="./CMS/saying_modify.jsp?sid=${say.sid}"><i class="icon-pencil"></i>编辑</a>
             <a style="text-decoration: none;color:red;" href="say_delete?sid=${say.sid }" onClick="return confirm('真的要删除吗?')" role="button" data-toggle="modal"><i class="icon-remove"></i>删除</a>
          </td>
        </tr>
        </c:forEach>
      </tbody>
      
    </table>
    
</div>   

	 <div align="center">
 	<%
      	PageBeanSaying<Saying> pageBeanSaying = (PageBeanSaying<Saying>)request.getAttribute("pageBeanSaying");

      %>
       <a style="font-size:20px;font-weight:1000;color:black">共<%=pageBeanSaying.getPageCount() %>页</a>
       <center>
    <ul>
        
       
        <li><a href="say_list?pageIndex=1">首页</a></li>
        <li><a href="say_list?pageIndex=<%=(pageBeanSaying.getPageIndex()==1?1:pageBeanSaying.getPageIndex()-1)%>">上一页</a></li>
        <li><a style="color:black">第 <i> <%=pageBeanSaying.getPageIndex() %></i>  页</a></li>
        <li><a href="say_list?pageIndex=<%=(pageBeanSaying.getPageIndex()==pageBeanSaying.getPageCount()?pageBeanSaying.getPageCount():pageBeanSaying.getPageIndex()+1)%>">下一页</a></li>
        <li><a href="say_list?pageIndex=<%=pageBeanSaying.getPageCount() %>">尾页</a></li>
    </ul>
	</center>
	</div>
	




</body>
</html>