<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>卡通玩具销售系统</title>
<link rel="stylesheet" type="text/css" href="../res/static/css/main.css">
<link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
<script type="text/javascript" src="../res/layui/layui.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
	<div class="left-nav">
		<div class="title">个人中心</div>
		<div class="list-box">
			<dl>
				<dt>我的中心</dt>
				<dd>
					<a href="${ pageContext.request.contextPath }/cartList.cdo?userid=${ UserInfo.id }">购物车</a>
				</dd>
				<dd>
					<a href="${ pageContext.request.contextPath }/jsp/myOrder.jsp">我的订单</a>
				</dd>
			</dl>
			<dl>
				<dt>我的账号</dt>
				<dd>
					<a href="${ pageContext.request.contextPath }/jsp/myMessage.jsp">我的资料</a>
				</dd>
				<dd>
					<a href="${ pageContext.request.contextPath }/jsp/myPassword.jsp">修改密码</a>
				</dd>
				<dd>
					<a href="${ pageContext.request.contextPath }/exit.udo">退出</a>
				</dd>
			</dl>
		</div>
	</div>

</body>
</html>