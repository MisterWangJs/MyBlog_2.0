<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>注册用户页面</title>
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
    
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
    
  </head>

  <body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;"> 

    
    
        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">注册用户界面</p>
            <div class="block-body">
                <form onsubmit="return formCheck()" method="post" action="../register">
                
                
  					${requestScope.adduserError}
  					 			
                    <label>用户名</label>
                    <input id="username"onfocus="setStyle(this.id)" name="username" placeholder="输入用户名" type="text" class="span12" required>
                    <label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <input id="password"onfocus="setStyle(this.id)"name="password" placeholder="输入密码"type="password" class="span12" required>

                    
                    <label>再次输入密码</label>
                    <input id="password2"onfocus="setStyle(this.id)"name="passwordconfirm" placeholder="再次输入密码" type="password" class="span12" required>
                    
                    <label>姓&nbsp;&nbsp;&nbsp;名</label>
                    <input id="name"onfocus="setStyle(this.id)" name="name" type="text" class="span12" required>
                 <!--  
                    <label>性&nbsp;&nbsp;&nbsp;别</label>
                    <input id="sex"onfocus="setStyle(this.id)"name="sex" type="text" class="span12" required> 
                 -->   
                   	 性别：&nbsp;&nbsp;&nbsp;<input  id="sex" type="radio" name="sex" value="男">男&nbsp;&nbsp;&nbsp;<input id="sex" checked  type="radio"name="sex" value="女" required>女</input></br>
                    
                    <br>
                  	
                  	
                    <label>邮&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                    <input id="email"onfocus="setStyle(this.id)" name="email" type="text" class="span12" required>
                    <label>电&nbsp;&nbsp;&nbsp;&nbsp;话</label>
                    <input id="tel"onfocus="setStyle(this.id)"name="tel" type="text" class="span12" maxlength="11" required>
                   

                   
                    <input type="submit" class="btn btn-primary pull-right" value="注册" />
                    <br><br>
                   
                </form>
            </div>
        </div>
       
    </div>
</div>



						<script type="text/javascript">
							function formCheck(){
								var password=
									document.getElementById("password").value;
				
								var password2=
									document.getElementById("password2").value;
								
								if(password!=password2){
									alert("两次输入的密码不一致！");
									return false;
								}
								return true;
							}
							
							
						
						</script>

					
					    <script src="lib/bootstrap/js/bootstrap.js"></script>
					    <script type="text/javascript">
					        $("[rel=tooltip]").tooltip();
					        $(function() {
					            $('.demo-cancel-click').click(function(){return false;});
					        });
					    </script>
    					<script>
							function setStyle(x){
							document.getElementById(x).style.background="pink";
								}
							</script>
  </body>
</html>
