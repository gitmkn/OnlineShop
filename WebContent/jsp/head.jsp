<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>卡通玩具商城</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
</head>

<body>
	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a
					href="${ pageContext.request.contextPath }/jsp/index.jsp">首页</a>
			</p>
			<div class="sn-quick-menu">
				<c:if test="${ UserInfo == null}">
					<div class="login">
						<a href="${ pageContext.request.contextPath }/jsp/login.jsp">登录</a>
					</div>
					<div class="login">
						<a href="${ pageContext.request.contextPath }/jsp/login.jsp">注册</a>
					</div>
				</c:if>
				<c:if test="${ UserInfo != null}">
					<div class="login">
						<a href="${ pageContext.request.contextPath }/jsp/index.jsp">${ UserInfo.username }</a>
					</div>
					<div class="login">
						<a href="${ pageContext.request.contextPath }/exit.udo">退出</a>
					</div>
				<div class="sp-cart">
					<a href="${ pageContext.request.contextPath }/jsp/shopcart.jsp">购物车</a><span>2</span>
				</div>
				</c:if>
			</div>
		</div>
	</div>


	<div class="header">
		<div class="headerLayout w1200">
			<div class="headerCon">
				<h1 class="mallLogo">
					<a href="${ pageContext.request.contextPath }/jsp/index.jsp"
						title="卡通玩具商城"> <img
						src="${ pageContext.request.contextPath }/res/static/img/logo.png">
					</a>
				</h1>
				<div class="mallSearch">
					<form action="" class="layui-form" novalidate>
						<input type="text" name="title" required lay-verify="required"
							autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
						<button class="layui-btn" lay-submit lay-filter="formDemo">
							<i class="layui-icon layui-icon-search"></i>
						</button>
						<input type="hidden" name="" value="">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>