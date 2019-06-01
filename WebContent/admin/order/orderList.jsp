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
    		<input type="button" id="dfh" class="btn btn-info" value="待发货">
    		<input type="button" id="yfh" class="btn btn-info" value="已发货">
    		<input type="button" id="ysh" class="btn btn-info" value="已收货">
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>订单ID</th>
						<th>用户姓名</th>
						<th>创建时间</th>
						<th>付款编码</th>
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
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/OrderList.odo?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var div = "<tr>"
					+"<td>"+item.order_id+"</td>"
					+"<td>"+item.username+"</td>"
					+"<td>"+getMyDate(item.order_createtime)+"</td>"
					+"<td>"+item.order_bankID+"</td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});
$('body').on('click','tr',function(){
	var getId = $(this).find("td:eq(0)").text();
	window.location.href="supplierUpdate.jsp?getId="+getId;
});

$('#add').on('click',function(){
	window.location.href="supplierAdd.jsp";
});



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
