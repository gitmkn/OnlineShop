<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="control.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <h3>确认订单</h3>
    </div>
    <div class="cart w1200">
    <form action="${ pageContext.request.contextPath }/Order.odo" method="post">
	  <input type="hidden" name="id" value="${ UserInfo.id }">
	  <div class="layui-form-item">
	    <label class="layui-form-label">收件人</label>
	    <div class="layui-input-block">
	      <input type="text" name="username" value="${ UserInfo.username }" lay-verify="title" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">收件人电话</label>
	    <div class="layui-input-block">
	      <input type="tel" name="phone" id="phone" value="${ UserInfo.phone }" lay-verify="required|phone" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	   <div class="layui-form-item">
	    <label class="layui-form-label">收货地址</label>
	    <div class="layui-input-block">
	      <input type="text" name="address" value="${ UserInfo.address }" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	
    <table class="layui-table">
    	<thead>
    		<tr>
    			<td>商品</td>
    			<td>单价</td>
    			<td>数量</td>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach items="${ cartList }" var="list">
    		<tr>
    			<td>
					<div class="item-cont">
		                <a href="javascript:;"><img src="${ pageContext.request.contextPath }/admin/goods/goodsImg/${ list.picture_url }" alt=""></a>
		                <span>${ list.goods_name }</span>
              		</div>
				</td>
				<td>${ list.goods_price }</td>
				<td>${ list.goods_sum }</td>
    		</tr>
    		</c:forEach>
    	</tbody>
    </table>
    	<span>总计：${ pieces }</span>
    	<button style="display: block;margin: auto;" class="layui-btn">提交订单</button>
    	</form>
    </div>
   
  </div>
<%@ include file="foot.jsp" %>

</body>
<script type="text/javascript">
   layui.config({
      base: '${ pageContext.request.contextPath }/res/static/js/util' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;
    })
  </script>
</html>