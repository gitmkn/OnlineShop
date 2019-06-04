<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/admin//css/bootstrap.min.css">  
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
<script src="${ pageContext.request.contextPath }/admin/js/jquery.min.js"></script>
<script src="${ pageContext.request.contextPath }/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery-3.4.1.js"></script>
<title>卡通玩具销售系统后台</title>
</head>
<%
	String order_id = request.getParameter("order_id");
%>
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
    	 <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>订单ID</label>
                	<div class="kv-item-content">
                		<input type="text" name="order_id" value="<%=order_id %>" readonly="readonly"/>
                    </div>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>创建时间</label>
                	<div class="kv-item-content">
                    	<input type="text" name="createtime" value="" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_username" value="" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_phone" value="" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>用户地址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="order_address" value="" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>付款编码</label>
                	<div class="kv-item-content">
                    	<input type="text" name="bankID" value="" readonly="readonly"/>
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
              
        </div>
        <table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>图片</th>
					<th>商品名称</th>
					<th>商品数量</th>
				</tr>
			</thead>
			<tbody id="tablepage" class="tbodyClass">
				
			</tbody>
		</table>
		<div class="buttons">
           <button class="button" id="back">返回</button>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
$(function(){
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderSelectById.odo?order_id='+<%=order_id%>,
		dataType:'json',
		success:function(data){
			$("input[name=createtime]").val(data.order_createtime);
			$("input[name=order_username]").val(data.order_username);
			$("input[name=order_phone]").val(data.order_phone);
			$("input[name=order_address]").val(data.order_address);
			$("input[name=bankID]").val(data.order_bankID);
		}
	});
	
	$("tbody tr").remove();
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderDetailsByOrderId.odo?order_id='+<%=order_id%>,
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				if(item.order_price == null) item.order_price = 0;
				var div = "<tr>"
					+"<td><img style='width:50px;height:50px;' src='${ pageContext.request.contextPath }/admin/goods/goodsImg/"+item.picture_url+"' /></td>"
					+"<td>"+item.goods_name+"</td>"
					+"<td>"+item.goods_sum+"</td></tr>";
				$("tbody").append(div);
			})
		}
	});
});

$("#back").click(function(){
	window.location.href="${ pageContext.request.contextPath }/admin/order/orderList.jsp";
})
</script>
</html>
