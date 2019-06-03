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
<title>用户列表</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div style="margin: 20px 20px 0 20px">
    		<input type="button" id="add" class="btn btn-info" value="添加管理员">
    		<input type="button" id="status" class="btn btn-info" value="查看冻结管理员">
    		<a onclick="location.reload()" class="btn btn-defeat">管理员列表</a>
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>用户名</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tablepage" class="tbodyClass">
					
				</tbody>
			</table>
			<div id="barcon" style="float:right">
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

$(function(){
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/adminList.audo?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var status = "";
				if(item.status == 1){
					status = "正常";
				}else{
					status = "冻结";
				}
				var div = "<tr>"
					+"<td>"+item.name+"</td>"
					+"<td>"+status+"</td>"
					+"<td><a href='' onclick='deleteuser("+item.id+",0)'>删除</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});
});

$("#status").click(function(){
	$("tbody").html("");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/adminList.audo?status=0',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var status = "";
				if(item.status == 1){
					status = "正常";
				}else{
					status = "冻结";
				}
				var div = "<tr>"
					+"<td>"+item.name+"</td>"
					+"<td>"+status+"</td>"
					+"<td><a href='' onclick='deleteuser("+item.id+",1)'>恢复</a></td></tr>";
				$("tbody").append(div);
			})
			goPage(1, 3);//分页
		}
	});

});

function deleteuser(a,b){
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/delete.audo?id='+a+'&&status='+b,
		success:function(data){
			alert(data);
		}
	});
}
$("#add").click(function(){
	window.document.location.href="${ pageContext.request.contextPath }/admin/user/adminAdd.jsp";
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
