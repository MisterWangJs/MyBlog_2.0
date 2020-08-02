<%@page import="wjs.blog.dao.impl.BlogDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.IBlogDao"%>

<%@page import="wjs.blog.dao.impl.SayDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.ISayDao"%>

<%@page import="wjs.blog.dao.impl.GuestBookDaoJDBCImpl"%>
<%@page import="wjs.blog.dao.IGuestBookDao"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Index</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

    <script src="../lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
       
    </style>
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>


  <body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
 		
<div>
        
        <div class="header">
        
 			
        	
            <h1 class="page-title" align="center">My Blog Content Management System</h1>
        </div>
        <!-- 博客 -->
        <%
        IBlogDao blogDao = new BlogDaoJDBCImpl();
		int blogcount = blogDao.findTotalCount();
      	%>
        <!-- 说说 -->
        <%
        ISayDao sayDao = new SayDaoJDBCImpl();
		int saycount = sayDao.findTotalCount();
     	%>
        <!-- 留言 -->
        <%
        IGuestBookDao guestbookDao = new GuestBookDaoJDBCImpl();
		int guestbookcount = guestbookDao.findTotalCount();
      	%>
        <!-- 来访 -->

        <div class="container-fluid">
            <div class="row-fluid">
                       <%
        	String date=new java.util.Date().toLocaleString();
        	%>

			<div class="row-fluid">

				<div class="block">
					<a href="#page-stats" class="block-heading" data-toggle="collapse">博客总体统计（当前统计时间 &nbsp;&nbsp;&nbsp;  <font style="color:red"><%=date %></font>）</a>
					<div id="page-stats" class="block-body collapse in">

						<div class="stat-widget-container">
							<div class="stat-widget">
								<div class="stat-button">
									<p class="title"><%= blogcount %></p>
									<p class="detail">博客总数</p>
								</div>
							</div>

							<div class="stat-widget">
								<div class="stat-button">
									<p class="title"><%=saycount %></p>
									<p class="detail">说说总数</p>
								</div>
							</div>

							<div class="stat-widget">
								<div class="stat-button">
									<p class="title"><%=guestbookcount%></p>
									<p class="detail">留言总数</p>
								</div>
							</div>

							<div class="stat-widget">
								<div class="stat-button">
									<p class="title">999</p>
									<p class="detail">来访人数</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
               
              
			<h3><p>
    	<b style="font-size:20px;">网站稳定运行：</b><SPAN id=span_dt_dt style="color:yellow; font-size:20px;"></SPAN> <SCRIPT language=javascript>function show_date_time(){
                        window.setTimeout("show_date_time()", 1000);
                        BirthDay=new Date("1/12/2020 0:0:0");
                        today=new Date();
                        timeold=(today.getTime()-BirthDay.getTime());
                        sectimeold=timeold/1000
                        secondsold=Math.floor(sectimeold);
                        msPerDay=24*60*60*1000
                        e_daysold=timeold/msPerDay
                        daysold=Math.floor(e_daysold);
                        e_hrsold=(e_daysold-daysold)*24;
                        hrsold=Math.floor(e_hrsold);
                        e_minsold=(e_hrsold-hrsold)*60;
                        minsold=Math.floor((e_hrsold-hrsold)*60);
                        seconds=Math.floor((e_minsold-minsold)*60);
                        span_dt_dt.innerHTML='<font style=color:#C40000>'+daysold+'</font> 天 <font style=color:#C40000>'+hrsold+'</font> 时 <font style=color:#C40000>'+minsold+'</font> 分 <font style=color:#C40000>'+seconds+'</font> 秒';
                        }
                        show_date_time();</script> 
    </p></h3>
          <!--           
			<footer>
				<hr>
				<center>
				<p style="font-weight:1000;font-size:20px;color:black;">Copyright © 2020 by <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=AjMyOzI1OjM1MTdCc3MsYW1v" style="text-decoration:none;"><span style="color:blue;">Mister丶Wang</span></a>All rights reserved.<a href="http://www.beian.miit.gov.cn/" target="_blank" style="font-weight:1000;font-size:20px;color:blue;" >豫ICP备19038774号</a></p>
				</center>
			</footer>
           -->          
            </div>
        </div>
    </div>
  </body>
</html>


