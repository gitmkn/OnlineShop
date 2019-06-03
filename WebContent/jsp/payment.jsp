<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="control.jsp"%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>卡通玩具销售系统</title>
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>
  <div class="content content-nav-base shopcart-content">
    <%@ include file="nav.jsp" %>
    <div class="banner-bg w1200">
      <h3>扫描二维码付款${ pieces }元</h3>
      <p>发货更快捷</p>
    </div>
    <div class="cart w1200">
    
      <img id="QRCode" style="display: block;margin: auto;width: 20%;" alt="付款" src='${ pageContext.request.contextPath }/QRCode.pay?pieces=${ pieces }'>
    	<a href="${ pageContext.request.contextPath }/OrderAdd.odo">
    	<button style="display: block;margin: auto;" class="layui-btn" lay-submit="" lay-filter="demo1">付款成功</button></a>
    	
    </div>
   
  </div>
<%@ include file="foot.jsp" %>

</body>
</html>