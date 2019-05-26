<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/jquery.grid.css" />


<title>用户列表</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">
            	<!-- <div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" data-define="define" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">自定义</span>
                            </span>
                            <span class="define-input">
                            	<input type="text" placeholder="开始时间" />
                                <span class="division"></span>
                                <input type="text" placeholder="结束时间" />
                            </span>
                        </div>
                    </div>
                    <div class="kv-item ue-clear">
                        <label>选择类型:</label>
                        <div class="kv-item-content">
                            <select>
                                <option>全部</option>
                                <option>毛绒玩具</option>
                                <option>冻结</option>
                            </select>
                        </div>&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
                <div class="search-button">
                	<input class="button" type="button" value="搜索一下" />
                </div>
             </div> -->
             
            <div class="table">
            	<div class="opt ue-clear">
                	<!-- <span class="sortarea">
                    	<span class="sort">
                        	<label>排序：</label>
                            <span class="name">
                            	<i class="icon"></i>
                                <span class="text">名称</span>
                            </span>
                        </span>
                        
                        <i class="list"></i>
                        <i class="card"></i>
                    </span> -->
                	<span class="optarea">
                        <a href="javascript:;" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <!-- <a href="javascript:;" class="delete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a> -->
                        
                        <!-- <a href="javascript:;" class="statistics">
                            <i class="icon"></i>
                            <span class="text">统计</span>
                        </a> -->
                        
                        <!-- <a href="javascript:;" class="config">
                            <i class="icon"></i>
                            <span class="text">配置</span>
                        </a> -->
                    </span>
                </div>
                
                <div class="grid"></div>
                
                <!-- <div class="pagination"></div> -->
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.select.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/core.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.pagination.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.grid.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/WdatePicker.js"></script>
<script type="text/javascript">
	$('select').select();
	var head = [{
				label: '商品ID',
				width: 100,
				sortable: 'default',
				name: 'id'	
			},{
				label:'商品名',
				width: 150,
				sortable: 'default',
				name:'name'	
			},{
				label:'价格',
				width:150	
			},{
				label: '个数',
				width: 150	
			},{
				label: '商品类别',
				minWidth: 150	
			},{
				label: '添加时间',
				width: 120	
			},{
				label: '商品状态',
				width:100	
			}];
			
	var oper = [{label:'下架',onclick:function(){
						alert('下架');
				}},{label:'修改',onclick: function(){
					window.location.href="goodsUpdate.jsp";	
				}},{label:'入库',onclick: function(){
					window.location.href="../warehouse/warehouseAdd.jsp";
				}}]
	
/*  	var tbody = [
					["201905030912","音乐安抚毛绒玩具 喜洋洋卡通安抚音乐婴儿睡眠玩具可爱","30.00","99","毛绒玩具","2019-01-18","热卖",oper], 
					["201905030915","小考拉毛绒玩具玩偶仿真无尾熊树袋熊公仔毛绒布艺玩具生日礼物","30.00","99","毛绒玩具","2019-01-18","热卖",oper],
					["201905030916","搞怪变身小公仔毛绒玩具蜡笔小新玩偶叮当毛绒布艺类玩具","30.00","99","毛绒玩具","2019-01-18","热卖",oper],
					["201905030917","垂耳兔公仔邦尼兔毛绒玩具小兔子玩偶兔兔抱枕布娃娃","30.00","99","毛绒玩具","2019-01-18","热卖",oper],
					["201905030918","趴猴长臂猴子长尾猴小公仔猴毛绒玩具","30.00","99","毛绒玩具","2019-01-18","热卖",oper],
					["201905030919","背带兔毛绒玩具公仔可爱布娃娃","30.00","99","毛绒玩具","2019-01-18","热卖",oper],
					["201905030920","思丹乐毛绒安抚玩具婴儿可入口宝宝啃咬玩偶哄睡手偶表演手套娃娃","30.00","99","毛绒玩具","2019-01-18","热卖",oper]
				] */
	var tbody = [];
	var str1;
	$.ajax({
		type : "GET",
		url : "${ pageContext.request.contextPath }/goodsList.gado",
		success : function(data) {
			if (data != null) {
				//console.log(data);
				str1 = JSON.parse(data);
				/* for(var i=0;i<=str1.length;i++){ */
				for ( var i in str1) {
					var arr = []
					arr[0] = str1[i].goods_id;
					arr[1] = str1[i].goods_name;
					arr[2] = str1[i].goods_price;
					arr[3] = str1[i].goods_sum;
					arr[4] = str1[i].goods_type;
					arr[5] = str1[i].goods_createtime;
					arr[6] = str1[i].goods_status;
					arr[7] = oper;

					tbody[i] = arr;
					console.log(arr);

				}
				console.log(tbody);
			}
		},
		error : function() {
			alert("请求错误");
		}
	});
		
		$('.grid').Grid({
			thead: head,
			tbody: null,
			height:400,
			checkbox: {
				single:true	
			},
			operator: {
				type : "normal",
				width : 150	
			},
			sortCallBack : function(name,index,type){
				alert(name+","+index+','+type);
			}
			
		});
	
	$('.grid').Grid('addLoading');
	
	/// 模拟异步
	setTimeout(function(){
		$('.grid').Grid('setData',tbody, head);
	},2000)
	
	
	$('.pagination').pagination(10,{
		callback: function(page){
			alert(page);	
		},
		display_msg: false
	});
	
	$('.search-box input[type=radio]').click(function(e) {
        if($(this).prop('checked')){
			if($(this).attr('data-define') === 'define'){
				$('.define-input').show();
			}else{
				$('.define-input').hide();
			}
		}
    });
</script>
</html>
