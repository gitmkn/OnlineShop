<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery-3.4.1.js"></script>
<title>卡通玩具销售系统后台</title>
</head>
<% 
	String getId1 = request.getParameter("getId1");
	String getId2 = request.getParameter("getId2");
	String getId3 = request.getParameter("getId3");
	String getId4 = request.getParameter("getId4");
	String getId5 = request.getParameter("getId5");
%>
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<p>订单信息修改</p>
            </h2>
            <form action="${ pageContext.request.contextPath }/OrderUpdate.odo" method="post">
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>订单ID</label>
                	<div class="kv-item-content">
                		<input type="text" name="order_id" value="<%=getId1 %>" readonly="readonly"/>
                    </div>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>创建时间</label>
                	<div class="kv-item-content">
                    	<input type="text" value="<%=getId2 %>" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_username" value="<%=getId3 %>" />
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_phone" value="<%=getId4 %>" />
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户地址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_address" value="<%=getId5 %>" />
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
              
        </div>
       
        <div class="buttons">
           <input class="button" type="submit" value="确认修改" />
           <a id="back">返回</a>
        </div>
        </form>
    </div>
</div>
</body>

<script type="text/javascript">
	$("#back").click(function(){
		window.location.href="${ pageContext.request.contextPath }/admin/order/orderList.jsp";
	});
</script>
</html>
