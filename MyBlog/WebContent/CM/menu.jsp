<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
	<head>
    <title>菜单页面</title>
 <link rel="stylesheet" type="text/css" href="../css/left-side-menu.css">
<link rel="stylesheet" type="text/css" href="../font/iconfont.css">

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="../js/left-side-menu.js"></script>


  </head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

<div class="left-side-menu" >
    <div class="lsm-expand-btn">
        <div class="lsm-mini-btn">
            <label>
                <input type="checkbox" checked="checked">
                <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="30" />
                    <path class="line--1" d="M0 40h62c18 0 18-20-17 5L31 55" />
                    <path class="line--2" d="M0 50h80" />
                    <path class="line--3" d="M0 60h62c18 0 18 20-17-5L31 45" />
                </svg>
            </label>

        </div>
<!--        <input type="text">-->

    </div>

    <div class="lsm-container">
        <div class="lsm-scroll" >
            <div class="lsm-sidebar">
                <ul>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_1"></i><span>后台首页</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a class="active" href="../CM/content.jsp" target="content" autofoucus ><span>主页</span></a></li>
                        </ul>
                    </li>
                   
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_2"></i><span>博客管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="../CMS/blog_Add.jsp" target="content"><span>写博客</span></a></li>
                            <li><a href="../blog_list" target="content"><span>博客列表</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_2"></i><span>留言管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="../CMS/guestbook_Add.jsp" target="content"><span>写留言</span></a></li>
                            <li><a href="../gb_list" target="content"><span>留言列表</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_2"></i><span>说说管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="../CMS/saying_Add.jsp" target="content"><span>写说说</span></a></li>
                            <li><a href="../say_list" target="content"><span>说说列表</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_2"></i><span>IP管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;" target="content"><span>IP 列表</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-users"></i><span>管理员</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="../user_list" target="content" ><span>管理员列表</span></a></li>
                        </ul>
                    </li>
                 
                     <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi1""></i><span>FAQ</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li class="lsm-sidebar-item">
                                <a href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>FAQ</span><i class="my-icon lsm-sidebar-more"></i></a>
                                <ul>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                </ul>
                            </li>

                            <li class="lsm-sidebar-item">
                                <a href="javascript:;"><i class="my-icon lsm-sidebar-icon_3 "></i><span>FAQ</span><i class="my-icon lsm-sidebar-more"></i></a>
                                <ul >
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                   <li><a href="javascript:;"><span>FAQ</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                     <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_1"></i><span>博客首页</span><i class="my-icon lsm-sidebar-more"></i></a>
                          <ul>
                            <li ><a class="active" href="http://www.misterwangjs.cn" target='_blank'><span>www.misterwangjs.cn</span></a></li>
                             <li ><a class="active" href="../index.jsp" target='_blank'><span>localhost</span></a></li>
                        </ul>
                    </li>
                       <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>退出系统</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="../User/logout.jsp" class="hidden-phone visible-tablet visible-desktop" role="button" target="_parent" ><span>退出系统</span></a></li>
                            <li><a href="../login.jsp" target='_blank'><span>登录</span></a></li>
                        </ul>
                    </li>
                   

                </ul>
            </div>
        </div>
    </div>

</div>
</body>
</html>