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


<title>供应商列表</title>
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
				label: '供应商ID',
				width: 100,
				sortable: 'default',
				name: 'id'	
			},{
				label:'供应商名称',
				width: 150,
				sortable: 'default',
				name:'name'	
			},{
				label:'联系人',
				width:150	
			},{
				label: '地址',
				width: 150	
			},{
				label: '邮箱',
				minWidth: 150	
			},{
				label: '联系电话',
				width: 120	
			}];
			
	var oper = [{label:'修改',onclick: function(){
					/* window.location.href="supplierUpdate.jsp";	 */
					/* alert(str1[i].supplier_id); */
					/* $.ajax({
						type:'get',
						url:'${ pageContext.request.contextPath }/supplier.sdo'
					}); */
				}}]
	
 	/* var tbody = [
					["gys20190001","毛绒玩具厂1","张三","辽宁省丹东市元宝区","ldxymrwj@163.com","13473241100",oper], 
					["gys20190002","毛绒玩具厂2","李四","辽宁省沈阳市","sysmrwj@163.com","13473245273",oper], 
					["gys20190003","毛绒玩具厂3","哈哈","辽宁省铁岭市","tlsmrwj@163.com","13473243366",oper], 
					["gys20190004","毛绒玩具厂4","测试","辽宁省本溪市","bxsmrwj@163.com","13473248546",oper], 
					["gys20190005","毛绒玩具厂5","赵六","辽宁省朝阳市","cysmrwj@163.com","13473246321",oper], 
					["gys20190006","毛绒玩具厂6","测试1111","辽宁省大连市","dlsmrwj@163.com","13473245791",oper], 
					["gys20190007","毛绒玩具厂7","测试2222","辽宁省营口市","yksmrwj@163.com","13473241346",oper], 
				] */
				var tbody = [];
				var str1;
				$.ajax({
					type : "GET",
					url : "${ pageContext.request.contextPath }/supplierList.sdo",
					success : function(data) {
						if (data != null) {
							//console.log(data);
							str1 = JSON.parse(data);
							for ( var i in str1) {
								var arr = []
								arr[0] = str1[i].supplier_id;
								arr[1] = str1[i].supplier_name;
								arr[2] = str1[i].supplier_username;
								arr[3] = str1[i].supplier_address;
								arr[4] = str1[i].supplier_email;
								arr[5] = str1[i].supplier_phone;
								arr[7] = oper;

								tbody[i] = arr;
								//console.log(arr);

							}
							//console.log(tbody);
						}
					},
            error:function(){
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
	},20)
	
	
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
