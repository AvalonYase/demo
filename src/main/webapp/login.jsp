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
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
  		function  check() {
			var username=document.getElementsByName("logname")[0].value;
			var pwd=document.getElementsByName("logpass")[0].value;
			var reg=/^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
			if(username!=""&&username!=null&&pwd!=""&&pwd!=null){
				if(reg.test(username)==false){
	  				alert("用户名不合法!");
	  				return false;
	  			}return true;
			}
			alert("账号密码不能为空！");
			return false;
		}
  </script>
  <body>
    <div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3> 					<!-- 登录信息标签 -->
							<c:if test="${empty LoginMsg && (LoginMsg eq null)}">欢迎你</c:if> 
							<c:if test="${not empty LoginMsg && !(LoginMsg eq null)}">${LoginMsg}</c:if> 
						</h3>
						<% request.getSession().removeAttribute("LoginMsg"); %><!-- 删除信息标签 -->
						
						<form action="checkLogin" name="f" method="post" onsubmit="return check()">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="logname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="logpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="mb2"><input type="submit" class="act-but submit" style="color: #FFFFFF; width: 330px" value="登录"></div>
						</form>
						<a href="register.jsp" style="margin-left: 90px;color: gainsboro;">没有账号？点击注册</a>
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
