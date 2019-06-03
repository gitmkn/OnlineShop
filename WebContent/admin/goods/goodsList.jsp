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
    		<input type="button" id="goodsstatus" class="btn btn-info" value="下架商品">
    		<a style="float:right;" onclick="location.reload()">商品列表</a>
    		<hr>
        	<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>商品ID</th>
						<th>商品名</th>
						<th>价格</th>
						<th>个数</th>
						<th>商品类别</th>
						<th>商品图片</th>
						<th>添加时间</th>
						<!-- <th>商品类别</th> -->
						<!-- <th>商品图片</th> -->
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
	$("tbody").html("");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/goodsList.gado?status=1',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var div = "<tr>"
					+"<td>"+item.goods_id+"</td>"
					+"<td>"+item.goods_name+"</td>"
					/* +"<td>"+item.goods_describe+"</td>" */
					+"<td>"+item.goods_price+"</td>"
					+"<td>"+item.goods_sum+"</td>"
					+"<td>"+item.type_name+"</td>"
					+"<td><img style='width:60px;height：50px;' src='${ pageContext.request.contextPath }/admin/goods/goodsImg/"+item.picture_url+"'></td>"
					+"<td>"+getMyDate(item.goods_createtime)+"</td>"
					+"<td><a onclick=addorder('"+item.goods_id+"','"+item.goods_name+"','"+item.goods_sum+"')>入库</a>&nbsp;"
					+"<a href='' onclick=updatestatus("+item.goods_id+",0)>下架</a>&nbsp;"
					+"<a onclick=update("+item.goods_id+")>修改</a>"
					+"</td></tr>";
					
				$("tbody").append(div);
			})
			goPage(1, 10);//分页
		}
	});
});

$("#goodsstatus").click(function(){
	$("tbody").html("");
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/goodsList.gado?status=0',
		dataType: "json",
		success:function(data){
			$.each(data, function(index, item){
				var div = "<tr>"
					+"<td>"+item.goods_id+"</td>"
					+"<td>"+item.goods_name+"</td>"
					/* +"<td>"+item.goods_describe+"</td>" */
					+"<td>"+item.goods_price+"</td>"
					+"<td>"+item.goods_sum+"</td>"
					+"<td>"+item.type_name+"</td>"
					+"<td>"+item.picture_url+"</td>"
					+"<td>"+getMyDate(item.goods_createtime)+"</td>"
					+"<td><a  href='' onclick=updatestatus("+item.goods_id+",1)>恢复</a>&nbsp;"
					+"</td></tr>";
					
				$("tbody").append(div);
			})
			goPage(1, 10);//分页
		}
	});
});
function update(a){
	/* var getId = $(this).find("td:eq(0)").text();
	alert(getId) */
	window.location.href="goodsUpdate.jsp?getId="+a;
};

function addorder(a,b,c){
	window.location.href="${ pageContext.request.contextPath }/admin/warehouse/warehouseAdd.jsp?getId="+a+"&&getName="+b+"&&getSum="+c;
};

function updatestatus(a,b){
	$.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/goodsStatus.gado?id='+a+'&&status='+b,
		success:function(data){
			alert(data);
		}
	});
};

$('#add').on('click',function(){
	window.location.href="goodsAdd.jsp";
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
