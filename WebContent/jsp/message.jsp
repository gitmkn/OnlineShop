<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>卡通玩具销售系统</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
	<%@ include file="head.jsp"%>
	<div class="content content-nav-base shopcart-content">
		<%@ include file="nav.jsp"%>
		<div class="banner-bg w1200">
			<h3>夏季清仓</h3>
			<p>宝宝被子、宝宝衣服3折起</p>
		</div>
		<form action="${ pageContext.request.contextPath }/addMessage.mdo" method="post">
			<div class="cart w1200">
				<div class="cart-table-th">
					<p style="margin-left: 40%;">感谢您对我们的网站做出评价！</p>

				</div>
				<div class="OrderList">
					<div class="order-content" id="list-cont">
						<textarea name="content" rows="20" cols="162"></textarea>
					</div>
				</div>


				<div class="FloatBarHolder layui-clear">
					<div class="th th-chk">
						<div class="select-all">
							<label>用户：${ UserInfo.username }</label> <input type="hidden"
								name="id" value="${ UserInfo.id }" />
						</div>
					</div>
					<div class="th Settlement">
						<button type="submit" class="layui-btn">提交</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%@ include file="foot.jsp"%>
</body>
</html>