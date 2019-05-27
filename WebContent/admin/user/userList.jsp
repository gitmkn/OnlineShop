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
    		<input type="button" id="status" class="btn btn-info" value="查看冻结用户">
    		<a onclick="location.reload()" class="btn btn-defeat">用户列表</a>
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>用户ID</th>
						<th>用户名</th>
						<th>性别</th>
						<th>电话</th>
						<th>邮箱</th>
						<th>地址</th>
						<th>注册时间</th>
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
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/userList.udo?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				if(item.username == null) item.username = "";
				if(item.sex == null) item.sex = "";
				if(item.email == null) item.email = "";
				if(item.address == null) item.address = "";
				var div = "<tr>"
					+"<td>"+item.id+"</td>"
					+"<td>"+item.username+"</td>"
					+"<td>"+item.sex+"</td>"
					+"<td>"+item.phone+"</td>"
					+"<td>"+item.email+"</td>"
					+"<td>"+item.address+"</td>"
					+"<td>"+getMyDate(item.createtime)+"</td>"
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
		url:'${ pageContext.request.contextPath }/userList.udo?status=0',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				if(item.username == null) item.username = "";
				if(item.sex == null) item.sex = "";
				if(item.email == null) item.email = "";
				if(item.address == null) item.address = "";
				var div = "<tr>"
					+"<td>"+item.id+"</td>"
					+"<td>"+item.username+"</td>"
					+"<td>"+item.sex+"</td>"
					+"<td>"+item.phone+"</td>"
					+"<td>"+item.email+"</td>"
					+"<td>"+item.address+"</td>"
					+"<td>"+getMyDate(item.createtime)+"</td>"
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
		url:'${ pageContext.request.contextPath }/delete.udo?id='+a+'&&status='+b,
		success:function(data){
			alert(data);
		}
	});
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
