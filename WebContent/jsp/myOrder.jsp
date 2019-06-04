<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="control.jsp"%>
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
		<div class="content content-nav-base commodity-content">
			<%@ include file="nav.jsp" %>
			<div class="commod-cont-wrap">
				<div class="commod-cont w1200 layui-clear">
					<%@ include file="personal_nav.jsp"%>
					<div class="right-cont-wrap">
						<div class="right-cont">
							<div class="layui-tab">
								<ul class="layui-tab-title">
									<li id="ld" class="layui-this">待发货</li>
									<li id="ly">已发货</li>
									<li id="lc">已完成</li>
								</ul>
								<div class="layui-tab-content">
									<div class="layui-tab-item layui-show">
										<table class="layui-table">
											<colgroup>
												<col width="260">
												<col width="200">
												<col width="150">
												<col width="200">
												<col width="150">
												<col>
											</colgroup>
											<thead>
												<tr>
													<td>订单编号</td>
													<td>图片</td>
													<td>商品名称</td>
													<td>商品个数</td>
													<td>订单时间</td>
												</tr>
											</thead>
											<tbody id="dfh">
											
											</tbody>
										</table>
									</div>
									<div class="layui-tab-item">
										<table class="layui-table">
											<colgroup>
												<col >
												<col width="150">
												<col width="200">
												<col width="150">
												<col width="200">
												<col width="100">
											</colgroup>
											<thead>
												<tr>
													<td>订单编号</td>
													<td>商品名称</td>
													<td>商品</td>
													<td>商品个数</td>
													<td>订单时间</td>
													<td>收货</td>
												</tr>
											</thead>
											<tbody  id="yfh">
												
											</tbody>
										</table>

									</div>
									<div class="layui-tab-item">

										<table class="layui-table">
											<colgroup>
												<col width="150">
												<col width="200">
												<col width="150">
												<col width="200">
												<col width="150">
												<col>
											</colgroup>
											<thead>
												<tr>
													<td>订单编号</td>
													<td>商品名称</td>
													<td>商品</td>
													<td>商品个数</td>
													<td>订单时间</td>

												</tr>
											</thead>
											<tbody id="ywc">
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="foot.jsp"%>
			
			
<div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	</body>
	<script>
		layui.config({
			base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
		}).use(['mm', 'laypage', 'jquery'], function() {
			var laypage = layui.laypage,
				$ = layui.$,
				mm = layui.mm;
			laypage.render({
				elem: 'demo0',
				count: 100 //数据总数
			});
			var userid = '${ UserInfo.id }';
			$.ajax({
				type:'get',
				url:'${ pageContext.request.contextPath }/OrderListByUserId.odo?userid='+userid+'&&status=1',
				dataType:'json',
				success:function(data){
					$.each(data, function(index, item){
						if(item.goods_name == null) item.goods_name = "";
						var div = '<tr>'
							+'<td>'+item.order_id+'</td>'
							+'<td><img style="width:80px;height:80px;" src="${ pageContext.request.contextPath }/admin/goods/goodsImg/'+item.picture_url+'"/></td>'
							+'<td>'+item.goods_name+'</td>'
							+'<td>'+item.goods_sum+'</td>'
							+'<td>'+getMyDate(item.order_createtime)+'</td>'
						$("#dfh").append(div);
					});
				}
			});
			$.ajax({
				type:'get',
				url:'${ pageContext.request.contextPath }/OrderListByUserId.odo?userid='+userid+'&&status=2',
				dataType:'json',
				success:function(data){
					$.each(data, function(index, item){
						if(item.goods_name == null) item.goods_name = "";
						var div = '<tr>'
							+'<td>'+item.order_id+'</td>'
							+'<td><img style="width:80px;height:80px;" src="${ pageContext.request.contextPath }/admin/goods/goodsImg/'+item.picture_url+'"/></td>'
							+'<td>'+item.goods_name+'</td>'
							+'<td>'+item.goods_sum+'</td>'
							+'<td>'+getMyDate(item.order_createtime)+'</td>'
							+'<td><a onclick="shouhuo('+item.order_id+')">确认收货</a></td>'
						$("#yfh").append(div);
					});
				}
			});
			$.ajax({
				type:'get',
				url:'${ pageContext.request.contextPath }/OrderListByUserId.odo?userid='+userid+'&&status=3',
				dataType:'json',
				success:function(data){
					$.each(data, function(index, item){
						if(item.goods_name == null) item.goods_name = "";
						var div = '<tr>'
							+'<td>'+item.order_id+'</td>'
							+'<td><img style="width:80px;height:80px;" src="${ pageContext.request.contextPath }/admin/goods/goodsImg/'+item.picture_url+'"/></td>'
							+'<td>'+item.goods_name+'</td>'
							+'<td>'+item.goods_sum+'</td>'
							+'<td>'+getMyDate(item.order_createtime)+'</td>'
						$("#ywc").append(div);
					});
				}
			});

		});
		//确认收货
		function shouhuo(a){
			window.location.href="${ pageContext.request.contextPath }/OrderUpdateStatus.odo?order_id="+a+"&status=3";
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

</html>