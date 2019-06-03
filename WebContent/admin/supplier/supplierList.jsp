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
    		<input type="button" id="add" class="btn btn-info" value="添加">
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>供应商ID</th>
						<th>供应商名称</th>
						<th>联系人</th>
						<th>地址</th>
						<th>邮箱</th>
						<th>联系电话</th>
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
		url:'${ pageContext.request.contextPath }/supplierList.sdo',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var div = "<tr>"
					+"<td>"+item.supplier_id+"</td>"
					+"<td>"+item.supplier_name+"</td>"
					+"<td>"+item.supplier_username+"</td>"
					+"<td>"+item.supplier_address+"</td>"
					+"<td>"+item.supplier_email+"</td>"
					+"<td>"+item.supplier_phone+"</td></tr>";
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
</script>
</body>
</html>
