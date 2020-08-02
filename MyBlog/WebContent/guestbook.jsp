<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="wjs.blog.domain.GuestBook"%>
<%@page import="wjs.blog.utils.PageBean"%>    
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Blog GuestBook</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="MisterWang个人博客" />
<link href="css/base.css" rel="stylesheet">
<link href="css/about.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="liuyan.css" />

<script src="js/liuyan1.js" type="text/javascript"></script>
<script src="js/liuyan.font.js" type="text/javascript"></script>
<script type="text/javascript">
	Cufon.replace('h1');
	Cufon.replace('.contact_row label');
</script>

<style>




.fenye li{
			float:left;
			margin-left:70px;
		
}
.fenye ul li a{

			font-weight:700;
			font-size:20px;
			color:blue;
		
}

</style>
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

<article>
<br>
<div style="background: url(./images/留言纸.jpg) top center; margin:0 auto; height: 100%; width:60%;overflow: hidden ;">
<div class="about left" >
 <h2 style="color:black;">Just say about:</h2>
  
 	<form name="form1"action="GuestBookAddServlet" method="post">
       <p style="color:black; font-weight:1000;font-size:20px;">你的名字:
       <input  style="width:290px;height:24px;background:url(images/input_border.gif) no-repeat center bottom;
		border:none;padding:2px 0 0 2px;"id="guestname"name="guestname" type="text" class="contact_input" required/></p>        
     <!--   <p style="color:black; font-weight:1000;font-size:20px;">你的邮箱: <input  style=" width:290px;height:24px;
		background:url(images/input_border.gif) no-repeat center bottom;border:none;padding:2px 0 0 2px;"
		 id="guestemail"name="guestemail" type="text" class="contact_input" required /> </p>   -->     
       <p style="color:black; font-weight:1000;font-size:20px;">留言内容: </p>
            <textarea  id="guestcontent" name="guestcontent"style="width:290px;height:110px;line-height:27px;
            font-size:12px;font-family:Arial, Helvetica, sans-serif;
			background:url(images/input_border_textarea.gif) no-repeat center bottom;
			left:100px; position:relative;padding:2px 0 0 2px;"class="contact_textarea" required></textarea>
						
        	<input  type="image" src="images/send.gif" style="left:100px; position:relative; padding:5px 10px 0 0;"class="contact_submit" onClick="javascript:fsubmit(document.form1);"/>
 	
 	</form>
 	
    <br>
    <h2 style="color:black;	">~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</h2>

 	   <c:forEach var="gb" items="${requestScope.pageBean.list}">
 	   
        <div style="width:700px; height:200px; align: center;">
        	<div style="width:700px; height:40px;" ><p style="font-weight:1000;font-size:20px; color:blue;">留言人：${gb.guestname }&nbsp;&nbsp;&nbsp;&nbsp;${gb.sendtime}</p></div>
        	<br>
        	<div style="text-align:center;"><p style="font-weight:1000;font-size:20px;color:black;">${gb.guestcontent }</p></div>

        </div>
        		<hr>
        </c:forEach>

     <div class="fenye">
 	<%
      	PageBean<GuestBook> pageBean = (PageBean<GuestBook>)request.getAttribute("pageBean");

      %>
       <a style="font-size:20px;font-weight:1000;color:black">共<%=pageBean.getPageCount() %>页</a>
    <ul>
        
       
        <li><a href="GuestBookListServlet?pageIndex=1">首页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=(pageBean.getPageIndex()==1?1:pageBean.getPageIndex()-1)%>">上一页</a></li>
        <li><a style="color:black">第 <i> <%=pageBean.getPageIndex() %></i>  页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=(pageBean.getPageIndex()==pageBean.getPageCount()?pageBean.getPageCount():pageBean.getPageIndex()+1)%>">下一页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=pageBean.getPageCount() %>">尾页</a></li>
    </ul>

	</div>

    
</div>
</div>
<!-- 
<aside class="right">  
   <p style="background:url(./images/aboutphoto1.png) no-repeat; height:900px; width:600px;  position:absolute; top:100px;left:0;color:#696969" />
	<p style="background:url(./images/aboutphoto2.png) no-repeat; height:900px; width:100%;  position:absolute; top:100px;left:500;color:#696969" />
	
</aside>
 -->
 
</article>

<footer class="topnav" id="topnav">
  <p style="font-weight:1000;font-size:20px;color:black;">Copyright © 2020 by <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><span style="color:blue;">Mister丶Wang</span><span>Contact us</span></a>All rights reserved.<a href="http://www.beian.miit.gov.cn/" target="_blank" >豫ICP备19038774号</a></p>
</footer>
<script src="js/silder.js"></script>
<script src="js/jquery.js"></script>

 <script type="text/javascript">
////////姓名
 
 $(document).ready(function(){
  $("#guestname").blur(function(){
	  //$("input").blur(function(){
  
  			var name=document.getElementById("guestname").value;	
  		//	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
  			        // var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
  			var kong = /^\s*$/;
  			
  			if (kong.test(name)){
  		      		alert("姓名不能为空")
  		    }
	//  });
  });
 });

 ///////// 留言内容
  $(document).ready(function(){
  $("#guestcontent").blur(function(){
	//  $("input").blur(function(){
  			var content=document.getElementById("guestcontent").value;	
  		//	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
  			        // var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
  			var kong = /^\s*$/;
  			
  			if (kong.test(content)){
  		      		alert("留言内容不能为空！")
  		    }
//  });
  });
});
  //////留言成功
  function fsubmit(){
	  
	  var kong = /^\s*$/;
		
	  
	  var name=document.getElementById("guestname").value;	
	  var email=document.getElementById("guestemail").value;	
	  var content=document.getElementById("guestcontent").value;	
	  
	  if(!kong.test(content)&&!kong.test(email)&&!kong.test(name)){
		  alert("留言成功！")
  
	  }
		}

</script>
 
 
  <script>
!function(){function n(n,e,t){return n.getAttribute(e)||t}function e(n){return document.getElementsByTagName(n)}function t(){var t=e("script"),o=t.length,i=t[o-1];return{l:o,z:n(i,"zIndex",-1),o:n(i,"opacity",.5),c:n(i,"color","0,0,0"),n:n(i,"count",99)}}function o(){a=m.width=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth,c=m.height=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight}function i(){r.clearRect(0,0,a,c);var n,e,t,o,m,l;s.forEach(function(i,x){for(i.x+=i.xa,i.y+=i.ya,i.xa*=i.x>a||i.x<0?-1:1,i.ya*=i.y>c||i.y<0?-1:1,r.fillRect(i.x-.5,i.y-.5,1,1),e=x+1;e<u.length;e++)n=u[e],null!==n.x&&null!==n.y&&(o=i.x-n.x,m=i.y-n.y,l=o*o+m*m,l<n.max&&(n===y&&l>=n.max/2&&(i.x-=.03*o,i.y-=.03*m),t=(n.max-l)/n.max,r.beginPath(),r.lineWidth=t/2,r.strokeStyle="rgba("+d.c+","+(t+.2)+")",r.moveTo(i.x,i.y),r.lineTo(n.x,n.y),r.stroke()))}),x(i)}var a,c,u,m=document.createElement("canvas"),d=t(),l="c_n"+d.l,r=m.getContext("2d"),x=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(n){window.setTimeout(n,1e3/45)},w=Math.random,y={x:null,y:null,max:2e4};m.id=l,m.style.cssText="position:fixed;top:0;left:0;z-index:"+d.z+";opacity:"+d.o,e("body")[0].appendChild(m),o(),window.onresize=o,window.onmousemove=function(n){n=n||window.event,y.x=n.clientX,y.y=n.clientY},window.onmouseout=function(){y.x=null,y.y=null};for(var s=[],f=0;d.n>f;f++){var h=w()*a,g=w()*c,v=2*w()-1,p=2*w()-1;s.push({x:h,y:g,xa:v,ya:p,max:6e3})}u=s.concat([y]),setTimeout(function(){i()},100)}();
</script>           
</body>
</html>