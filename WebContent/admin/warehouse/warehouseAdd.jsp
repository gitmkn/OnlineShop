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
String getId = request.getParameter("getId");
String getName = request.getParameter("getName");
String getSum = request.getParameter("getSum");
%>
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<p>商品入库基本信息</p>
            </h2>
            <form id="form" action="${ pageContext.request.contextPath }/godownAdd.godo" method="post">
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品ID</label>
                	<div class="kv-item-content">
                    	<input type="text" name="goods_id" readonly="readonly" value="<%=getId%>" />
                    </div>
                </div>
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>入库商品</label>
                	<div class="kv-item-content">
                    	<input type="text" readonly="readonly"  value="<%=getName%>" />
                    </div>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>管理员</label>
                	<div class="kv-item-content">
                    	<input type="text" name="username" readonly="readonly" value="${ adminUserInfo.name }" />
                    </div>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>数量</label>
                	<div class="kv-item-content">
                	<input type="hidden" name="goods_sum" value="<%=getSum%>" />
                    	<input type="text" name="sum" placeholder="当前数量:<%=getSum%>" />
                    </div>
                    <span class="kv-item-tip">数为整数</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商</label>
                	<div class="kv-item-content">
                    	<!-- <input type="text" placeholder="供应商ID" /> -->
                    	<select id="supplier" name="supplier">
                    	
                    	</select>
                    </div>
                    <span class="kv-item-tip">请选中供货商</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>入库价格</label>
                	<div class="kv-item-content">
                    	<input type="text" name="price" placeholder="请输入商品入库单价" />
                    </div>
                    <span class="kv-item-tip">请正确填写价格</span>
                </div>
            </div>
            
            <div class="buttons">
                <input class="button" type="button" value="确认添加" />
            </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
	$(function(){
		var div = "";
		$.ajax({
			type:'get',
			url:'${ pageContext.request.contextPath }/supplierList.sdo',
			dataType:'json',
			success:function(data){
				$.each(data,function(index,element){
					div += "<option value="+element.supplier_id+">"+element.supplier_name+"</option>";
				})
				$("#supplier").append(div);
			}
		});
	});
	$(".button").click(function(){
		$("#form").submit();
	});
</script>
</body>
</html>
