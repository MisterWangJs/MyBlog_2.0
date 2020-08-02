<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Blog Index</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="优雅、稳重、大气、低调。" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/mytime.css" rel="stylesheet">
 <script src="js/vue.js"></script>
 <style>
		
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
      <p><span>A Clock</span></p>
    </h3>
   
  </div>
</div>
<article>
  <aside class="right">
  
  	<!-- 日历 -->
  	<!--<input type="button" value="显示当前时间" onclick="myDate()"/>-->
  	
		<p><h3 style="font-size:20px;color:black;" id="div" style="width: 200px; height: 30px;"></h3></p>

		<script>
		    var i=0;
		    function myDate(){
		        var now=new Date();
		        var year=now.getFullYear();
		        var month=now.getMonth()+1;
		        var day=now.getDate();
		        var hours=now.getHours();
		        var minutes=now.getMinutes();
		        var seconds=now.getSeconds();
		
		        document.getElementById("div").innerHTML=year+"年"+month+"月"+day+"日"+hours+"："+minutes+"："+seconds;
		    }
		    setInterval(myDate,1000);
		</script>


  	<!--  地区 天气 -->
    <div class="weather"><iframe width="450" scrolling="no" height="100" frameborder="0" allowtransparency="true"
     src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe></div>
   
    </aside>
<div id="app"> <div class="s" 
			v-bind:class="{xx:60-v==s}"
			v-for="(v,k) in 60"
			v-bind:style="{transform:'translate('+xc(sr,v+s,60)+'px,'+yc(sr,v+s,60)+'px) rotate('+dg(v+s,60)+'deg)'}"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{zh(60-v,1)}}秒 </div>
			 <div class="i" v-for="(v,k) in 60"
			v-bind:class="{xx:60-v==i}"
			v-bind:style="{transform:'translate('+xc(ir,v+i,60)+'px,'+yc(ir,v+i,60)+'px) rotate('+dg(v+i,60)+'deg)'}"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{zh(60-v,1)}}分 </div> 
			<div class="h" v-for="(v,k) in 24"
			v-bind:class="{xx:24-v==h}"
			v-bind:style="{transform:'translate('+xc(hr,v+h,24)+'px,'+yc(hr,v+h,24)+'px) rotate('+dg(v+h,24)+'deg)'}"> &nbsp;&nbsp;&nbsp;&nbsp;{{zh(24-v,1)}}时 </div>
			<div class="w" v-for="(v,k) in 7"
			v-bind:class="{xx:7-v==w}"
			v-bind:style="{transform:'translate('+xc(wr,v+w,7)+'px,'+yc(wr,v+w,7)+'px) rotate('+dg(v+w,7)+'deg)'}">&nbsp;&nbsp;星期{{wk[7-v]}}</div> 
			<div class="d" v-for="(v,k) in 31"
			v-bind:class="{xx:31-k==d}"
			v-bind:style="{transform:'translate('+xc(dr,k+d,31)+'px,'+yc(dr,k+d,31)+'px) rotate('+dg(k+d,31)+'deg)'}"> {{zh(31-k,1)}}日 </div> 
			<div class="m" v-for="(v,k) in 12"
			v-bind:class="{xx:12-k==m+1}"
			v-bind:style="{transform:'translate('+xc(mr,k+m+1,12)+'px,'+yc(mr,k+m+1,12)+'px) rotate('+dg(k+m+1,12)+'deg)'}">{{zh(12-k,1)}}月 </div> 
			<div class="y"> {{y}}年 </div> </div> 
		
		

</article>

<footer class="topnav" id="topnav">
  <p style="font-weight:1000;font-size:20px;color:black;">Copyright © 2020 by <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><span style="color:blue;">Mister丶Wang</span><span>Contact us</span></a>All rights reserved.<a href="http://www.beian.miit.gov.cn/" target="_blank" >豫ICP备19038774号</a></p>
</footer>

<script src="js/silder.js"></script>
<script src="js/mytime.js"></script>

  <script>
!function(){function n(n,e,t){return n.getAttribute(e)||t}function e(n){return document.getElementsByTagName(n)}function t(){var t=e("script"),o=t.length,i=t[o-1];return{l:o,z:n(i,"zIndex",-1),o:n(i,"opacity",.5),c:n(i,"color","0,0,0"),n:n(i,"count",99)}}function o(){a=m.width=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth,c=m.height=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight}function i(){r.clearRect(0,0,a,c);var n,e,t,o,m,l;s.forEach(function(i,x){for(i.x+=i.xa,i.y+=i.ya,i.xa*=i.x>a||i.x<0?-1:1,i.ya*=i.y>c||i.y<0?-1:1,r.fillRect(i.x-.5,i.y-.5,1,1),e=x+1;e<u.length;e++)n=u[e],null!==n.x&&null!==n.y&&(o=i.x-n.x,m=i.y-n.y,l=o*o+m*m,l<n.max&&(n===y&&l>=n.max/2&&(i.x-=.03*o,i.y-=.03*m),t=(n.max-l)/n.max,r.beginPath(),r.lineWidth=t/2,r.strokeStyle="rgba("+d.c+","+(t+.2)+")",r.moveTo(i.x,i.y),r.lineTo(n.x,n.y),r.stroke()))}),x(i)}var a,c,u,m=document.createElement("canvas"),d=t(),l="c_n"+d.l,r=m.getContext("2d"),x=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(n){window.setTimeout(n,1e3/45)},w=Math.random,y={x:null,y:null,max:2e4};m.id=l,m.style.cssText="position:fixed;top:0;left:0;z-index:"+d.z+";opacity:"+d.o,e("body")[0].appendChild(m),o(),window.onresize=o,window.onmousemove=function(n){n=n||window.event,y.x=n.clientX,y.y=n.clientY},window.onmouseout=function(){y.x=null,y.y=null};for(var s=[],f=0;d.n>f;f++){var h=w()*a,g=w()*c,v=2*w()-1,p=2*w()-1;s.push({x:h,y:g,xa:v,ya:p,max:6e3})}u=s.concat([y]),setTimeout(function(){i()},100)}();
</script>    

</body>
</html>