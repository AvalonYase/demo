<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<!--必要样式-->
	<link rel="stylesheet" type="text/css" href="css/component.css" />
  </head>
  <script type="text/javascript">
  		function check(){
  			var username=document.getElementsByName("registername")[0].value;
  			var reg=/^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
  			var pwd=document.getElementsByName("registerpass")[0].value;
  			var checkpwd=document.getElementsByName("checkregisterpass")[0].value;
  			var reg1=/^[a-zA-Z0-9]{4,10}$/;
  			alert(username+","+pwd);
  			if(username!=""&&username!=null&&pwd!=""&&pwd!=null){
  				if(reg.test(username)==false){
  				alert("用户名不合法");
	  			}
	  			if(reg1.test(pwd)==false){
	  				alert("密码不能含有非法字符，长度在4-10之间");
	  			}
	  			if(checkpwd!=pwd){
	  				alert("两次输入密码不同！");	
	  			}
	  			if(reg.test(username)&&reg1.test(pwd)&&checkpwd==pwd){
	  				return true;
	  			}
  			}else{
  				alert("账号密码不能为空！");
  			}			
  			return false;
  		}
  </script>
  <body>
	    <div class="container demo-1">
				<div class="content">
					<div id="large-header" class="large-header">
						<canvas id="demo-canvas"></canvas>
						<div class="logo_box">
							
							<!--//注册页面-->
							<h3>	<!-- 注册信息标签 -->
								<%  %>
								<c:if test="${empty Regmsg && (Regmsg eq null)}">欢迎注册</c:if> 
								<c:if test="${not empty Regmsg && !(Regmsg eq null)}">${Regmsg}</c:if>
							</h3>
							<% request.getSession().removeAttribute("Regmsg"); %>
							<form action="register" name="f" method="post" onsubmit="return check()">
								<div class="input_outer">
									<span class="u_user"></span>
									<input name="registername" class="text" style="color: #FFFFFF !important" type="text" placeholder="请创建账号名">
								</div>
								<div class="input_outer">
									<span class="us_uer"></span>
									<input name="registerpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请创建新密码">
								</div>
								<div class="input_outer">
									<span class="us_uer"></span>
									<input name="checkregisterpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码确认">
								</div>
								<div class="mb2"><input type="submit" class="act-but submit" style="color: #FFFFFF; width: 330px" value="注册"></div>
							</form>
							<a href="Login.jsp" style="margin-left: 135px;color: gainsboro;">返回登录</a>
						</div>
					</div>
				</div>
			</div><!-- /container -->
			<script src="js/TweenLite.min.js"></script>
			<script src="js/EasePack.min.js"></script>
			<script src="js/rAF.js"></script>
			<script src="js/demo-1.js"></script>
			<div style="text-align:center;">
		</div>
  </body>
</html>
