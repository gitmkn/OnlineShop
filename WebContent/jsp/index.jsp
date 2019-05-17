<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>卡通玩具销售系统nt</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/res/static/js/jquery.js"></script>
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
						<a href="javascript:;"> <img
							src="${ pageContext.request.contextPath }/res/static/img/s_img1.jpg">
						</a>
					</div>
					<div class="sk_bd">
						<div class="layui-carousel" id="test1">
							<div carousel-item>
								<div class="item-box">
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img2.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥100.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img3.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img4.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img5.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
								</div>
								<div class="item-box">
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img2.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img3.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img4.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
									<div class="item">
										<a href="javascript:;"><img
											src="${ pageContext.request.contextPath }/res/static/img/s_img5.jpg"></a>
										<div class="title">宝宝五彩袜棉质舒服</div>
										<div class="price">
											<span>￥49.00</span>
											<del>￥99.00</del>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<%-- <div class="hot-recommend-con">
			<div class="hot-con1 w1200 layui-clear">
				<div class="item">
					<h4>热销推荐</h4>
					<div class="big-img">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/hot1.png"></a>
					</div>
					<div class="small-img">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/hot2.png"
							alt=""></a>
					</div>
				</div>
				<div class="item">
					<div class="top-img">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/hot5.jpg"></a>
					</div>
					<div class="bottom-img">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/hot6.jpg"></a>
						<a class="baby-cream" href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/hot7.jpg"></a>
					</div>
				</div>
				<div class="item item1 margin0 padding0">
					<a href="javascript:;"><img
						src="${ pageContext.request.contextPath }/res/static/img/hot8.jpg"></a>
					<a href="javascript:;"><img class="btm-img"
						src="${ pageContext.request.contextPath }/res/static/img/hot9.jpg"></a>
				</div>
			</div>
		</div> --%>



		<div class="product-cont w1200" id="product-cont">
			<div class="product-item product-item1 layui-clear">
				<div class="left-title">
					<h4>
						<i>1F</i>
					</h4>
					<img
						src="${ pageContext.request.contextPath }/res/static/img/icon_gou.png">
					<h5>宝宝服饰</h5>
				</div>
				<div class="right-cont">
					<a href="javascript:;" class="top-img"><img
						src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
						alt=""></a>
					<div class="img-box">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a>
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
					<h5>奶粉辅食</h5>
				</div>
				<div class="right-cont">
					<a href="javascript:;" class="top-img"><img
						src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
						alt=""></a>
					<div class="img-box">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a>
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
					<h5>宝宝用品</h5>
				</div>
				<div class="right-cont">
					<a href="javascript:;" class="top-img"><img
						src="${ pageContext.request.contextPath }/res/static/img/img12.jpg"
						alt=""></a>
					<div class="img-box">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img8.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img9.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img10.jpg"></a>
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/s_img11.jpg"></a>
					</div>
				</div>
			</div>
		</div>

		<div class="product-list-box" id="product-list-box">
			<div class="product-list-cont w1200">
				<h4>更多推荐</h4>
				<div class="product-item-box layui-clear">
					<%-- <div class="list-item">
						<a href="javascript:;"><img
							src="${ pageContext.request.contextPath }/res/static/img/more2.jpg"></a>
						<p>时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝</p>
						<span>￥100.00</span>
					</div> --%>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="foot.jsp"%>
	<script type="text/javascript">
	
 	$(function(){
		$.ajax({
			type:"get",
			url:"${ pageContext.request.contextPath }/goodsIndex.gdo?type=gdtj",
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