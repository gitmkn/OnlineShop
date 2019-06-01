<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>卡通玩具销售系统</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/res/static/js/jquery.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body id="list-cont">

	<%@ include file="head.jsp"%>
	<div class="content">
		<%@ include file="nav.jsp"%>
		<!--  <div class="category-con"> -->
		<div class="category-banner">
			<div class="w1200">
				<img
					src="${ pageContext.request.contextPath }/res/static/img/banner1.jpg">
			</div>
			<!--  </div> -->
		</div>
		    <div class="floors">
		      <div class="sk">
		        <div class="sk_inner w1200">
		          <div class="sk_hd">
		            <a href="javascript:;">
		              <img src="${ pageContext.request.contextPath }/res/static/img/s_img1.jpg">
		            </a>
		          </div>
		          <div class="sk_bd">
		            <div class="layui-carousel" id="test1">
		              <div carousel-item class="item-box-item">
		                
		              </div>
		            </div>
		          </div>
		        </div>    
		      </div>
    		</div>

			<div class="product-cont w1200" id="product-cont">
				<div class="product-item product-item1 layui-clear">
					<div class="left-title">
						<h4>
							<i>1F</i>
						</h4>
						<img
							src="${ pageContext.request.contextPath }/res/static/img/icon_gou.png">
						<h5>女孩玩具</h5>
					</div>
					<div class="right-cont">
						<a href="javascript:;" class="top-img"><img
							src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
							alt=""></a>
						<div class="img-box" id="1f">
							<%-- <a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a> --%>
						</div>
					</div>
				</div>
				<div class="product-item product-item2 layui-clear">
					<div class="left-title">
						<h4>
							<i>2F</i>
						</h4>
						<img
							src="${ pageContext.request.contextPath }/res/static/img/icon_gou.png">
						<h5>男孩玩具</h5>
					</div>
					<div class="right-cont">
						<a href="javascript:;" class="top-img"><img
							src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
							alt=""></a>
						<div class="img-box" id="2f">
							<%-- <a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a> --%>
						</div>
					</div>
				</div>
				<div class="product-item product-item3 layui-clear">
					<div class="left-title">
						<h4>
							<i>3F</i>
						</h4>
						<img
							src="${ pageContext.request.contextPath }/res/static/img/icon_gou.png">
						<h5>婴儿玩具</h5>
					</div>
					<div class="right-cont">
						<a href="javascript:;" class="top-img"><img
							src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
							alt=""></a>
						<div class="img-box" id="3f">
							<%-- <a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a> --%>
						</div>
					</div>
				</div>
			</div>

			<div class="product-list-box" id="product-list-box">
				<div class="product-list-cont w1200">
					<h4>更多推荐</h4>
					<div class="product-item-box layui-clear">
						<div class="list-item">
							<a href="javascript:;"><img
								src="${ pageContext.request.contextPath }/res/static/img/more2.jpg"></a>
							<p>时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝</p>
							<span>￥100.00</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="foot.jsp"%>
		<script type="text/javascript">
			$(function() {
				/* 请求“今日必抢” */
				$.ajax({
					type:"get",
					url:"${ pageContext.request.contextPath }/goodsIndex1.gdo?type=1",
					dataType:'json',
					success:function(data){
						var j = Number(data.length);//总个数
						var i = Math.ceil(data.length/4);
						var div = '';
						$.each(data,function(index,item){
							div += '<div class="item">'+
							'<a href="${ pageContext.request.contextPath }/goods.gdo?id='+item.goods_id+'">'+
							'<img src="${ pageContext.request.contextPath }/res/static/img/more3.jpg">'+
							'<div class="title">'+item.goods_name.substring(0,13)+'...</div>'+
							'<div class="price"><span>￥ '+item.goods_price+'</span></div>'+
							'</div>';
						})
						div = '<div class="item-box">'+div+'</div>';
						$(".item-box-item").append(div);
					}
				});
				/* 请求“更多推荐” */
				$.ajax({
					type:"get",
					url:"${ pageContext.request.contextPath }/goodsIndex1.gdo?type=5",
					dataType:'json',
					success:function(data){
						var goods = "";
						$.each(data,function(index,item){
							goods += '<div class="list-item">'+
							'<a href="${ pageContext.request.contextPath }/goods.gdo?id='+item.goods_id+'">'+
							'<img src="${ pageContext.request.contextPath }/res/static/img/more3.jpg">'+
							'<p>'+item.goods_name+'</p>'+
							'<span>￥ '+item.goods_price+'</span></a>'+
							'</div>';
						}),
						$(".product-item-box").append(goods);
					}
				});
				/* 请求“1F” */
				$.ajax({
					type:"get",
					url:"${ pageContext.request.contextPath }/goodsIndex1.gdo?type=2",
					dataType:'json',
					success:function(data){
						var div = "";
						$.each(data,function(index,item){
							if(index <= 4){
								div += '<a href="javascript:;" class="top-img">'+'<img src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg" alt=""></a>';
							}
						})
						$("#1f").append(div);
					}
				});
				/* 请求“2F” */
				$.ajax({
					type:"get",
					url:"${ pageContext.request.contextPath }/goodsIndex1.gdo?type=3",
					dataType:'json',
					success:function(data){
						var div = "";
						$.each(data,function(index,item){
							if(index <= 4){
								div += '<a href="javascript:;" class="top-img">'+'<img src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg" alt=""></a>';
							}
						})
						$("#2f").append(div);
					}
				});
				/* 请求“3F” */
				$.ajax({
					type:"get",
					url:"${ pageContext.request.contextPath }/goodsIndex1.gdo?type=4",
					dataType:'json',
					success:function(data){
						var div = "";
						$.each(data,function(index,item){
							if(index <= 4){
								div += '<a href="javascript:;" class="top-img">'+'<img src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg" alt=""></a>';
							}
						})
						$("#3f").append(div);
					}
				});
			});
			baseUrl = '${ pageContext.request.contextPath }';
			layui.config({
				base : '${ pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
			}).use([ 'mm', 'carousel' ], function() {
				var carousel = layui.carousel, mm = layui.mm;
				var option = {
					elem : '#test1',
					width : '100%' //设置容器宽度
					,
					arrow : 'always',
					height : '298',
					indicator : 'none'
				}
						carousel.render(option);
						// 模版引擎导入
						// var ins = carousel.render(option);
						// var html = demo.innerHTML;
						// var listCont = document.getElementById('list-cont');
						// // console.log(layui.router("#/about.html"))
						//  mm.request({
						//    url: '../json/index.json',
						//    success : function(res){
						//      console.log(res)
						//      listCont.innerHTML = mm.renderHtml(html,res)
						//      ins.reload(option);
						//    },
						//    error: function(res){
						//      console.log(res);
						//    }
						//  })

					});
		</script>
</body>
</html>