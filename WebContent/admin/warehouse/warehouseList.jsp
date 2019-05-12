<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        	<!-- <div class="search-box ue-clear">
            	<div class="search-area">
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
                
                <div class="pagination"></div>
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
				label: '入库单ID',
				width: 100,
				sortable: 'default',
				name: 'id'	
			},{
				label:'入库时间',
				width: 150,
				sortable: 'default',
				name:'name'	
			},{
				label:'数量',
				width:150	
			},{
				label: '管理员',
				width: 150	
			},{
				label: '商品ID',
				minWidth: 150	
			},{
				label: '供应商ID',
				width: 120	
			}];
			
	var oper = [{label:'修改',onclick: function(){
					window.location.href="warehouseUpdate.jsp";	
				}}]
	
 	var tbody = [
					["RK201905020001","2019-05-02 12:14:03","99","admin","201905030912","gys20190001",oper], 
					["RK201905020002","2019-05-02 12:18:13","31","admin","201905030913","gys20190002",oper], 
					["RK201905020003","2019-05-02 12:20:22","46","admin","201905030914","gys20190003",oper], 
					["RK201905020004","2019-05-02 12:22:43","88","admin","201905030915","gys20190004",oper], 
					["RK201905020005","2019-05-02 12:34:35","45","admin","201905030916","gys20190005",oper], 
					["RK201905020006","2019-05-02 12:38:45","52","admin","201905030917","gys20190006",oper]
				]
		/* var data1 = null;
		var tbody;
		$.ajax({
			type:"GET",
            url:"${ pageContext.request.contextPath }/userList.udo",
            success:function(data){
                if(data != null){
                	console.log(data);
                	data1 = data;
                }
            },
            error:function(){
                alert("请求错误");
            }
		});	 */
		
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
