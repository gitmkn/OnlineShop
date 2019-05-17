<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>卡通玩具销售系统e</title>
</head>
<body>
	<div class="footer">
		<div class="ng-promise-box">
			<div class="ng-promise w1200">
				<p class="text">
					<a class="icon1" href="javascript:;">7天无理由退换货</a> <a class="icon2"
						href="javascript:;">满99元全场免邮</a> <a class="icon3"
						style="margin-right: 0" href="javascript:;">100%品质保证</a>
				</p>
			</div>
		</div>
		<div class="mod_help w1200">
			<p>
				<a href="${ pageContext.request.contextPath }/jsp/index.jsp">首页</a> <span>|</span> 
				<a href="${ pageContext.request.contextPath }/jsp/login.jsp">登录</a> <span>|</span> 
				<a href="${ pageContext.request.contextPath }/jsp/registered.jsp">注册</a> <span>|</span> 
				<a href="${ pageContext.request.contextPath }/jsp/about.jsp">关于我们</a>
				<c:if test="${ UserInfo != null}">
				<span>|</span> 
				<a href="${ pageContext.request.contextPath }/jsp/shopcar.jsp">购物车</a> <span>|</span> 
				<a href="${ pageContext.request.contextPath }/jsp/personal.jsp">个人中心</a>
				</c:if>
			</p>
			<p class="coty">
				母婴商城版权所有 &copy; 2012-2019  
				<a href="">辽东学院 - 信息工程学院</a>
				- Collect from <a href="">B1501 丛倩</a>
			</p>
		</div>
	</div>
</body>
</html>