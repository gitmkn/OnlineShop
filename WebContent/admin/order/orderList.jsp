<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/admin//css/bootstrap.min.css">  
<script src="${ pageContext.request.contextPath }/admin/js/jquery.min.js"></script>
<script src="${ pageContext.request.contextPath }/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/page.js"></script>
<title>供应商列表</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div style="margin: 20px 20px 0 20px">
    		<h3 id="title"></h3>
    		<input type="button" id="dfh" class="btn btn-info" value="待发货">
    		<input type="button" id="yfh" class="btn btn-info" value="已发货">
    		<input type="button" id="ysh" class="btn btn-info" value="已收货">
    		
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>订单ID</th>
						<th>创建时间</th>
						<!-- <th>付款编码</th> -->
						<!-- <th>订单金额</th> -->
						<th>用户姓名</th>
						<th>用户电话</th>
						<th>配送地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tablepage" class="tbodyClass">
					
				</tbody>
			</table>
			<div id="barcon" style="float:right">
				<!-- <input type="button" class="btn btn-info" value="上一页">
				<span>1/1</span>
				<input type="button" class="btn btn-info" value="下一页"> -->
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

$(function(){
	$("#title").html("待发货");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderList.odo?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var get1 = item.order_id;
				var get2 = getMyDate(item.order_createtime);
				var get3 = item.order_username;
				var get4 = item.order_phone;
				var get5 = item.order_address;
				var div = "<tr>"
					+"<td>"+get1+"</td>"
					+"<td>"+get2+"</td>"
					/* +"<td>"+item.order_bankID+"</td>" */
					+"<td>"+get3+"</td>"
					+"<td>"+get4+"</td>"
					+"<td>"+get5+"</td>"
					+"<td><a onclick='dfh("+get1+")'>发货</a>&nbsp;"
					+"<a onclick=\"update('"+get1+"','"+get2+"','"+get3+"','"+get4+"','"+get5+"')\">修改</a>&nbsp;"
					+"<a onclick='dfhxq("+get1+")'>详情</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});
//请求待发货
$("#dfh").click(function(){
	$("tbody tr").remove();
	$("#title").html("待发货");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderList.odo?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var get1 = item.order_id;
				var get2 = getMyDate(item.order_createtime);
				var get3 = item.order_username;
				var get4 = item.order_phone;
				var get5 = item.order_address;
				var div = "<tr>"
					+"<td>"+get1+"</td>"
					+"<td>"+get2+"</td>"
					/* +"<td>"+item.order_bankID+"</td>" */
					+"<td>"+get3+"</td>"
					+"<td>"+get4+"</td>"
					+"<td>"+get5+"</td>"
					+"<td><a onclick='dfh("+get1+")'>发货</a>&nbsp;"
					+"<a onclick=\"update('"+get1+"','"+get2+"','"+get3+"','"+get4+"','"+get5+"')\">修改</a>&nbsp;"
					+"<a onclick='dfhxq("+get1+")'>详情</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});
//请求已发货
$("#yfh").click(function(){
	$("tbody tr").remove();
	$("#title").html("已发货");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderList.odo?status=2',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				if(item.order_price == null) item.order_price = 0;
				var div = "<tr>"
					+"<td>"+item.order_id+"</td>"
					+"<td>"+getMyDate(item.order_createtime)+"</td>"
					/* +"<td>"+item.order_bankID+"</td>" */
					+"<td>"+item.order_username+"</td>"
					+"<td>"+item.order_phone+"</td>"
					+"<td>"+item.order_address+"</td>"
					+"<td><a onclick='dfhxq("+item.order_id+")'>详情</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});
//请求已完成
$("#ysh").click(function(){
	$("tbody tr").remove();
	$("#title").html("已完成");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderList.odo?status=3',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				if(item.order_price == null) item.order_price = 0;
				var div = "<tr>"
					+"<td>"+item.order_id+"</td>"
					+"<td>"+getMyDate(item.order_createtime)+"</td>"
					/* +"<td>"+item.order_bankID+"</td>" */
					+"<td>"+item.order_username+"</td>"
					+"<td>"+item.order_phone+"</td>"
					+"<td>"+item.order_address+"</td>"
					+"<td><a onclick='dfhxq("+item.order_id+")'>详情</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});
	



/* $('body').on('click','tr',function(){
	var getId1 = $('body tr').find("td:eq(0)").text();
	var getId2 = $(this).find("td:eq(1)").text();
	var getId3 = $(this).find("td:eq(2)").text();
	var getId4 = $(this).find("td:eq(3)").text();
	var getId5 = $(this).find("td:eq(4)").text();
	window.location.href="orderUpdate.jsp?getId1="+getId1+"&getId2="+getId2+"&getId3="+getId3+"&getId4="+getId4+"&getId5="+getId5;
}); */

function update(getId1,getId2,getId3,getId4,getId5){
	window.location.href="orderUpdate.jsp?getId1="+getId1+"&getId2="+getId2+"&getId3="+getId3+"&getId4="+getId4+"&getId5="+getId5;
}
//发货
function dfh(a){
	window.location.href="${ pageContext.request.contextPath }/OrderUpdateById.odo?order_id="+a+"&status=2";
}
//详情
function dfhxq(a){
	window.location.href="${ pageContext.request.contextPath }/admin/order/order.jsp?order_id="+a;
}

//时间转换
function getMyDate(str){
	if(str == null){
		return "";
	}else{
		var oDate = new Date(str),  
	    oYear = oDate.getFullYear(),  
	    oMonth = oDate.getMonth()+1,  
	    oDay = oDate.getDate(),  
	    oHour = oDate.getHours(),  
	    oMin = oDate.getMinutes(),  
	    oSen = oDate.getSeconds(),  
	    oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间  
	    return oTime;  
	}
}; 
//补0操作
function getzf(num){  
  if(parseInt(num) < 10){  
      num = '0'+num;  
  }  
  return num;  
}
</script>
</body>
</html>
