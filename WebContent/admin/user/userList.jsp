<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/jquery.grid.css" />


<title>用户列表</title>
</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<div class="search-box ue-clear">
					<div class="search-area">
						<!-- <div class="kv-item ue-clear">
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
                    </div> -->
						<div class="kv-item ue-clear">
							<label>选择类型:</label>
							<div class="kv-item-content">
								<select>
									<option>全部</option>
									<option>正常</option>
									<option>冻结</option>
								</select>
							</div>
							&nbsp;&nbsp;&nbsp;
						</div>
					</div>
					<div class="search-button">
						<input class="button" type="button" value="搜索一下" />
					</div>
				</div>

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
						<span class="optarea"> <a href="javascript:;" class="add">
								<i class="icon"></i> <span class="text">添加</span>
						</a> <a href="javascript:;" class="delete"> <i class="icon"></i> <span
								class="text">删除</span>
						</a> <!-- <a href="javascript:;" class="statistics">
                            <i class="icon"></i>
                            <span class="text">统计</span>
                        </a> --> <!-- <a href="javascript:;" class="config">
                            <i class="icon"></i>
                            <span class="text">配置</span>
                        </a> -->
						</span>
					</div>

					<div class="grid"></div>

					<div class="pagination"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.select.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/core.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.pagination.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.grid.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/WdatePicker.js"></script>
<script type="text/javascript">
	$('select').select();
	var head = [ {
		label : 'ID',
		width : 100,
		sortable : 'default',
		name : 'id'
	}, {
		label : '用户名',
		width : 150,
		sortable : 'default',
		name : 'name'
	}, {
		label : '电话',
		width : 150
	}, {
		label : '邮箱',
		width : 150
	}, {
		label : '地址',
		minWidth : 150
	}, {
		label : '注册时间',
		width : 120
	}, {
		label : '用户状态',
		width : 100
	} ];

	var oper = [ {
		label : '删除',
		onclick : function() {
			alert('删除');
		}
	}, {
		label : '编辑',
		onclick : function() {
			alert('编辑')
		}
	} ]

/*var tbody = [
	
	 ["201905030912","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper], 
	 ["201905030913","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper],
	 ["201905030924","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper],
	 ["201905030937","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper],
	 ["201905030939","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper],
	 ["201905030940","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper],
	 ["201905031016","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper], 
	 ["201905031037","admin","13470010000","13470010000@163.com","辽宁省沈阳市","2019-01-18","正常",oper]
	 ]  */

	var tbody = [];
	var str1;
	$.ajax({
		type : "GET",
		url : "${ pageContext.request.contextPath }/userList.udo",
		success : function(data) {
			if (data != null) {
				//console.log(data);
				str1 = JSON.parse(data);
				/* for(var i=0;i<=str1.length;i++){ */
				for ( var i in str1) {
					var arr = []
					arr[0] = str1[i].id;
					arr[1] = str1[i].username;
					arr[2] = str1[i].phone;
					arr[3] = str1[i].email;
					arr[4] = str1[i].address;
					arr[5] = str1[i].createtime;
					arr[6] = str1[i].status;
					arr[7] = oper;

					tbody[i] = arr;
					//console.log(arr);

				}
				//console.log(tbody);
			}
		},
		error : function() {
			alert("请求错误");
		}
	});

	$('.grid').Grid({
		thead : head,
		tbody : null,
		height : 400,
		checkbox : {
			single : true
		},
		operator : {
			type : "normal",
			width : 100
		},
		sortCallBack : function(name, index, type) {
			alert(name + "," + index + ',' + type);
		}

	});

	$('.grid').Grid('addLoading');

	/// 模拟异步
	setTimeout(function() {
		$('.grid').Grid('setData', tbody, head);
	}, 100)

	$('.pagination').pagination(10, {
		callback : function(page) {
			alert(page);
		},
		display_msg : false
	});

	$('.search-box input[type=radio]').click(function(e) {
		if ($(this).prop('checked')) {
			if ($(this).attr('data-define') === 'define') {
				$('.define-input').show();
			} else {
				$('.define-input').hide();
			}
		}
	});
</script>
</html>
