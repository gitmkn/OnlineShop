<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/skin_/login.css" />
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<title>卡通玩具销售系统后台登录</title>
</head>

<body>
	<div id="container">
		<div id="bd">
			<div id="main">
				<form class="login-box" action="${pageContext.request.contextPath}/adminLogin.audo" method="post">
					<div id="logo"></div>
					<h1></h1>
					<div class="input username" id="username">
						<label for="userName">用户名</label> <span></span> <input type="text"
							name="username" autocomplete="off" id="userName" value="admin" />
					</div>
					<div class="input psw" id="psw">
						<label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label> <span></span>
						<input type="password" name="password" id="password" />
					</div>
					<div id="btn" class="loginButton">
						<input type="submit" class="button" value="登录" />
					</div>
				</form>
			</div>
			<div id="ft">CopyRight&nbsp;2019&nbsp;&nbsp;版权所有&nbsp;&nbsp;信息工程学院
				B1501 丛倩 &nbsp;&nbsp;</div>
		</div>

	</div>

</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
		var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
	});
	/*$('select').select();*/
</script>

</html>
