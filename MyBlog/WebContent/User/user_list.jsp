<%@page import="wjs.blog.domain.User"%>
<%@page import="wjs.blog.utils.PageBeanUser"%>
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
            <h1 class="page-title" align="center">用户列表</h1>
        </div>
    <hr style="border:2px solid #ccc">
							<br>			<br>			<br>
<div class="well" align="center">
    <table class="altrowstable" id="alternatecolor" >
      <thead>
        <tr>
          <th>序号</th>
          <th>账号</th>
          <th>密码</th>
          <th>姓名</th>
          <th>性别</th>
          <th>邮箱</th>
          <th>电话</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	
      <c:forEach var="user" items="${requestScope.pageBeanUser.list}">

        <tr>
          <td>${user.id }</td>
          <td>${user.username }</td>
          <td>${user.password }</td>
          <td>${user.name }</td>
          <td>${user.sex }</td>
          <td>${user.email }</td>
          <td>${user.tel }</td>
          <td>
              <a style="text-decoration: none;color:red;" href="./User/user_modify.jsp?id=${user.id}"><i class="icon-pencil"></i>编辑</a>
             <a style="text-decoration: none;color:red;" href="user_delete?id=${user.id }" onClick="return confirm('真的要删除该用户吗?')" role="button" data-toggle="modal"><i class="icon-remove"></i>删除</a>
          </td>
        </tr>
        </c:forEach>
      </tbody>
      
    </table>
    
</div>   

	 <div align="center">
 	<%
      	PageBeanUser<User> pageBeanUser = (PageBeanUser<User>)request.getAttribute("pageBeanUser");

      %>
      <br>
       <a style="font-size:20px;font-weight:1000;color:black">共<%=pageBeanUser.getPageCount() %>页</a>
       <center>
    <ul>
        
       
        <li><a href="user_list?pageIndex=1">首页</a></li>
        <li><a href="user_list?pageIndex=<%=(pageBeanUser.getPageIndex()==1?1:pageBeanUser.getPageIndex()-1)%>">上一页</a></li>
        <li><a style="color:black">第 <i> <%=pageBeanUser.getPageIndex() %></i>  页</a></li>
        <li><a href="user_list?pageIndex=<%=(pageBeanUser.getPageIndex()==pageBeanUser.getPageCount()?pageBeanUser.getPageCount():pageBeanUser.getPageIndex()+1)%>">下一页</a></li>
        <li><a href="user_list?pageIndex=<%=pageBeanUser.getPageCount() %>">尾页</a></li>
    </ul>
	</center>
	</div>
	




</body>
</html>