<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
		<!--<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">-->
		<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/nav.css" />
		<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
		<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
		<title>底部内容页</title>
	</head>

	<body>
		<div id="container">
			<div id="bd">
				<div class="sidebar">
					<div class="sidebar-bg"></div>
					<i class="sidebar-hide" title="收起菜单"></i>
					<h2><a href="javascript:;"><i class="h2-icon" title="管理菜单"></i><span>管理菜单</span></a></h2>
					<ul class="nav">
						<li class="nav-li">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">用户管理</span></a>
							<ul class="subnav">
								<li class="subnav-li" href="index.html" data-id="1">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">首页</span></a>
								</li>
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/user/userList.jsp"  data-id="2">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">用户列表</span></a>
								</li>
								<!-- <li class="subnav-li" href="table.html" data-id="10">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">地方新闻管理</span></a>
								</li>
								<li class="subnav-li" data-id="11">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置1</span></a>
								</li> -->
							</ul>
						</li>
						<li class="nav-li current">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">商品管理</span></a>
							<ul class="subnav">
								<li class="subnav-li current" href="${ pageContext.request.contextPath }/admin/goods/goodsList.jsp" data-id="8">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">商品列表</span></a>
								</li>
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/goods/goodsAdd.jsp" data-id="9">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">添加商品</span></a>
								</li>
								<!-- <li class="subnav-li" href="table.html" data-id="3">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">表格</span></a>
								</li>
								<li class="subnav-li" data-id="4">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置2</span></a>
								</li> -->
							</ul>
						</li>
						<li class="nav-li">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">订单管理</span></a>
							<ul class="subnav">
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/order/orderList.jsp" data-id="5">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">订单列表</span></a>
								</li>
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/order/orderUpdate.jsp" data-id="6">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">订单详情查询</span></a>
								</li>
								<!-- <li class="subnav-li" data-id="7">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择1</span></a>
								</li> -->
							</ul>
						</li>
						<li class="nav-li last-nav-li">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">入库管理</span></a>
							<ul class="subnav">
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/warehouse/warehouseList.jsp" data-id="14">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">入库列表</span></a>
								</li>
								<%-- <li class="subnav-li" href="${ pageContext.request.contextPath }/admin/warehouse/warehouseUpdate.jsp" data-id="13">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">入库信息修改</span></a>
								</li> --%>
							</ul>
						</li>
						<li class="nav-li last-nav-li">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">供应商管理</span></a>
							<ul class="subnav">
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/supplier/supplierList.jsp" data-id="15">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">供应商列表</span></a>
								</li>
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/supplier/supplierAdd.jsp" data-id="16">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">添加供应商</span></a>
								</li>
							</ul>
						</li>
						<li class="nav-li last-nav-li">
							<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">系统设置</span></a>
							<ul class="subnav">
								<li class="subnav-li" href="${ pageContext.request.contextPath }/admin/user/passwordUpdate.jsp" data-id="12">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">修改密码</span></a>
								</li>
								<!-- <li class="subnav-li" data-id="13">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排管理2</span></a>
								</li>
								<li class="subnav-li" data-id="14">
									<a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择2</span></a>
								</li> -->
							</ul>
						</li>
					</ul>
					<!--<div class="tree-list outwindow">
						<div class="tree ztree"></div>
					</div>-->
				</div>
				<!--隐藏后的导航-->
				<div class="main">
					<div class="title">
						<i class="sidebar-show"></i>
						<ul class="tab ue-clear">

						</ul>
						<i class="tab-more"></i>
						<i class="tab-close"></i>
					</div>
					<div class="content">
					</div>
				</div>
			</div>
		</div>
		<!--多出的菜单下拉-->
		<div class="more-bab-list">
			<ul></ul>
			<div class="opt-panel-ml"></div>
			<div class="opt-panel-mr"></div>
			<div class="opt-panel-bc"></div>
			<div class="opt-panel-br"></div>
			<div class="opt-panel-bl"></div>
		</div>
	</body>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/nav.js"></script>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/Menu.js"></script>
	<!--<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>-->
	<script type="text/javascript">
		var menu = new Menu({
			defaultSelect: $('.nav').find('li[data-id="1"]')
		});

		// 左侧树结构加载
		/*var setting = {};

		var zNodes = [{
				name: "新闻管理",
				children: [{
						name: "新闻视频管理",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "新闻频道管理",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "地方新闻管理",
						icon: 'img/skin_/leftlist.png'
					}
				]
			},
			{
				name: "用户信息设置",
				open: true,
				children: [{
						name: "首页",
						checked: true,
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "表单",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "表格",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "自定义设置",
						icon: 'img/skin_/leftlist.png'
					}
				]
			},
			{
				name: "工作安排",
				children: [{
						name: "工作安排",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "安排管理",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "类型选择",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "自定义设置",
						icon: 'img/skin_/leftlist.png'
					}
				]
			},
			{
				name: "数据管理",
				children: [{
						name: "工作安排",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "安排管理",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "类型选择",
						icon: 'img/skin_/leftlist.png'
					},
					{
						name: "自定义设置",
						icon: 'img/skin_/leftlist.png'
					}
				]
			}
		];*/

		/*$.fn.zTree.init($(".tree"), setting, zNodes);

		$('.sidebar h2').click(function(e) {
			$('.tree-list').toggleClass('outwindow');
			$('.nav').toggleClass('outwindow');
		});*/

		$(document).click(function(e) {
			if(!$(e.target).is('.tab-more')) {
				$('.tab-more').removeClass('active');
				$('.more-bab-list').hide();
			}
		});
	</script>

</html>