<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="wjs.blog.domain.Blog"%>
<%@page import="wjs.blog.utils.PageBeanBlog"%>    
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Blog Index</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="优雅、稳重、大气、低调。" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
 <script src="js/vue.js"></script>
 <style>
			*{margin: 0;padding: 0;}
			
			#app{
				position: relative;
			}
			.s,.i,.h,.w,.d,.m,.y{
				position:absolute;
				top: 420px;
				left: 270px;
				transition:transform 1s;
				color: #999999;
				font-size: 11px;
			}
			.xx,.y{
				color: #FF0000;
				font-size: 10px;
				font-weight: bold;
			}
		</style> 

</head>
<body >
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
<div class="banner">
  <section class="box">
  
    <ul class="texts">
      <p>不是最好的时光里有你们在，而是你们在，我才有了最好的时光。</p>
      <p>人生最大的失败，就是放弃。</p>
      <p>渐渐的知道了，很多东西可遇而不可求，不属于自己的，何必拼了命去在乎。</p>
    </ul>
    
    <div class="avatar"><a href="#"><span>汪京生</span></a> </div>
    
  </section>
  
</div>
<div class="template">
  <div class="box">
  
    <h3>
      <p><span>MyBolg</span></p>
    </h3>
   
  </div>
</div>

<article>

  <h2 class="title_tj">
    <p>文章<span>置顶</span></p>
  </h2>
  <div class="bloglist left">
  	<h3>博客Coding~</h3>
    <figure><img src="images/2.png"></figure>
    <ul>
      <p>博客正在完善中~~~</p>
      <p>博客正在完善中~~~</p>
      <p>博客正在完善中~~~</p>
  	  <p>未完待续！</p>
      <a title="/" href="#"  class="readmore">阅读全文>></a>
    </ul>
    <p class="dateview"><span>2020-1-30</span><span>作者：汪京生</span><span>个人博客：[<a href="#">置顶</a>]</span></p>
  	 
  	 
  	 
    <c:forEach var="blog" items="${requestScope.pageBeanBlog.list}">
		     <p>文章<span>推荐</span></p>
		  	</h2>
		  <!-- ------------------------------target="_blank"------------------------------------------ -->
		    <h3>${blog.title }</h3>
		    <figure><img src="images/2.png"></figure>
		    <ul>
		      <p>${blog.content }...</p>
		      <a title="/" href="#"  class="readmore">阅读全文>></a>
		    </ul>
		    <p class="dateview"><span>${blog.pubtime }</span><span>作者：${blog.author }</span><span>个人博客：[<a href="#">${blog.type }</a>]</span></p>

    </c:forEach>
    
    
      <div class="fenye">
 	<%
      	PageBeanBlog<Blog> pageBeanBlog = (PageBeanBlog<Blog>)request.getAttribute("pageBeanBlog");
      %>
       <a style="font-size:20px;font-weight:1000;color:black">共<%=pageBeanBlog.getPageCount()%>页</a>
    <ul>
        
       
        <li><a href="GuestBookListServlet?pageIndex=1">首页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=(pageBeanBlog.getPageIndex()==1?1:pageBeanBlog.getPageIndex()-1)%>">上一页</a></li>
        <li><a style="color:black">第 <i> <%=pageBeanBlog.getPageIndex() %></i>  页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=(pageBeanBlog.getPageIndex()==pageBeanBlog.getPageCount()?pageBeanBlog.getPageCount():pageBeanBlog.getPageIndex()+1)%>">下一页</a></li>
        <li><a href="GuestBookListServlet?pageIndex=<%=pageBeanBlog.getPageCount() %>">尾页</a></li>
    </ul>

	</div>
  
  </div>
 

		

<footer class="topnav" id="topnav">
  <p style="font-weight:1000;font-size:20px;color:black;">Copyright © 2020 by <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><span style="color:blue;">Mister丶Wang</span><span>Contact us</span></a>All rights reserved.<a href="http://www.beian.miit.gov.cn/" target="_blank" >豫ICP备19038774号</a></p>
</footer>

<script src="js/silder.js"></script>

  <script>
!function(){function n(n,e,t){return n.getAttribute(e)||t}function e(n){return document.getElementsByTagName(n)}function t(){var t=e("script"),o=t.length,i=t[o-1];return{l:o,z:n(i,"zIndex",-1),o:n(i,"opacity",.5),c:n(i,"color","0,0,0"),n:n(i,"count",99)}}function o(){a=m.width=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth,c=m.height=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight}function i(){r.clearRect(0,0,a,c);var n,e,t,o,m,l;s.forEach(function(i,x){for(i.x+=i.xa,i.y+=i.ya,i.xa*=i.x>a||i.x<0?-1:1,i.ya*=i.y>c||i.y<0?-1:1,r.fillRect(i.x-.5,i.y-.5,1,1),e=x+1;e<u.length;e++)n=u[e],null!==n.x&&null!==n.y&&(o=i.x-n.x,m=i.y-n.y,l=o*o+m*m,l<n.max&&(n===y&&l>=n.max/2&&(i.x-=.03*o,i.y-=.03*m),t=(n.max-l)/n.max,r.beginPath(),r.lineWidth=t/2,r.strokeStyle="rgba("+d.c+","+(t+.2)+")",r.moveTo(i.x,i.y),r.lineTo(n.x,n.y),r.stroke()))}),x(i)}var a,c,u,m=document.createElement("canvas"),d=t(),l="c_n"+d.l,r=m.getContext("2d"),x=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(n){window.setTimeout(n,1e3/45)},w=Math.random,y={x:null,y:null,max:2e4};m.id=l,m.style.cssText="position:fixed;top:0;left:0;z-index:"+d.z+";opacity:"+d.o,e("body")[0].appendChild(m),o(),window.onresize=o,window.onmousemove=function(n){n=n||window.event,y.x=n.clientX,y.y=n.clientY},window.onmouseout=function(){y.x=null,y.y=null};for(var s=[],f=0;d.n>f;f++){var h=w()*a,g=w()*c,v=2*w()-1,p=2*w()-1;s.push({x:h,y:g,xa:v,ya:p,max:6e3})}u=s.concat([y]),setTimeout(function(){i()},100)}();
</script>    

</body>
</html>
>