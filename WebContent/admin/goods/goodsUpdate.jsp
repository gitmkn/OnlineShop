<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/goods/dist/bootstrap-3.3.4.css">
<link href="${ pageContext.request.contextPath }/admin/goods/dist/summernote.css" rel="stylesheet"/>
<script src="${ pageContext.request.contextPath }/admin/goods/dist/jquery-1.10.2.js"></script>
<script src="${ pageContext.request.contextPath }/admin/goods/dist/bootstrap-3.3.4.js"></script>
<script src="${ pageContext.request.contextPath }/admin/goods/dist/summernote.js"></script>
<script src="${ pageContext.request.contextPath }/admin/goods/dist/lang/summernote-zh-CN.js"></script>    <!-- 中文-->

<style>
	.m{ width: 800px; margin-left: auto; margin-right: auto; }
</style>

<title>卡通玩具销售系统后台</title>
</head>
 <%  
String getId = request.getParameter("getId");
%> 
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    <form id="fm" method="post" action="${ pageContext.request.contextPath }/goodsUpdate.gado" enctype="multipart/form-data">
    	<div id="main">
            <h2 class="subfild">
            	<span>基本信息</span>
            </h2>
            <input type="text" name="goods_id" value="<%=getId %>" />
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品名称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="goods_name" placeholder="商品名称" />
                    </div>
                    <span class="kv-item-tip">商品名称字数限制在35个字符</span>
                </div>
                <!-- <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>发布时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="文章标题" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                        <i class="time-icon"></i>
                    </div>
                    <span class="kv-item-tip error">这是一个错误信息</span>
                </div> -->
                
                <div class="kv-item ue-clear">
                	<label>商品分类</label>
                	<div class="kv-item-content">
                    	<select name="goods_type">
                        	<!-- <option value="1">女孩玩具</option>
                            <option value="2">男孩玩具</option>
                            <option value="3">婴儿玩具</option> -->
                        </select>
                        <span id="goodstype"></span>
                    </div>
                    <!-- <span class="kv-item-tip success">成功信息</span> -->
                </div>
                <!-- <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品个数</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="商品个数" />
                    </div>
                    <span class="kv-item-tip">商品个数为整数</span>
                </div> -->
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品价格</label>
                	<div class="kv-item-content">
                    	<input type="text" name="goods_price" placeholder="商品价格" />
                    </div>
                    <span class="kv-item-tip">请正确填写商品价格</span>
                </div>
                
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品图</label>
                	<div class="kv-item-content">
						<span class="text"></span>
						
                        <!-- <input type="file" name="uploadFile"/> -->
                        <!-- <input type="button" class="button normal long2" value="浏览.." /> -->
                        <input type="file" name="uploadFile">
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品图</label>
                	<div class="kv-item-content">
						<span class="text"></span>
						<img id="imgfile" src="" width="100" height="100">
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
            </div>
            
            <h2 class="subfild">
            	<span>商品描述</span>
            </h2>
            
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品内容</label>
                	<div class="kv-item-content">
                    	<div class="m">		
							<div class="summernote"></div>
							<input type="hidden" id="summernote" name="goods_describe"/>
						</div>
                    </div>
                </div>
            </div>
            <div class="buttons">
                <input type="button" class="button" value="确认添加" />
                <span>${ addgoods }</span>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
<script>
$(function(){
	 $('.summernote').summernote({
	        height: 200,
	        tabsize: 2,
	        lang: 'zh-CN',
	        callbacks:{
	            onImageUpload: function (files) {
	                //上传图片到服务器
	                var formData = new FormData();
	                formData.append('file',files[0]);
	                $.ajax({
	                    url : '${pageContext.request.contextPath}/ImggoodsAdd.gado',//后台文件上传接口
	                    type : 'POST',
	                    data : formData,
	                    processData : false,
	                    contentType : false,
	                    success : function(path) {
	                    	alert(path);
	                        $('.summernote').summernote('insertImage',path);
	                    },error:function(){
	                        alert("上传失败");
	                    }
	                });
	            }
	        }
	    });
	//请求商品类型
		$.ajax({
			type : "GET",
			url : "${ pageContext.request.contextPath }/goodstype.gado",
			dataType:"json",
			success : function(data) {
				for(var i=0;i<data.length;i++){
					$("select[name='goods_type']").append('<option value="'+data[i].type_id+'">'+data[i].type_name+'</option>');
				}
			}
		});
		
		//请求商品详细信息
		var getId = '<%=getId %>';
		$.ajax({
			type : "GET",
			url : "${ pageContext.request.contextPath }/goods.gado?goodsId="+getId,
			dataType:"json",
			success : function(data) {
				$('input[name=goods_name]').val(data.goods_name);
				$('body option[value='+data.type_id+']').attr("selected","selected");
				$('input[name=goods_price]').val(data.goods_price);
				$('#imgfile').attr('src','${ pageContext.request.contextPath }/admin/goods/goodsImg/'+data.picture_url);
				/* $('input[name=uploadFile]').val(data.picture_url); */
				$('.summernote').summernote('code',data.goods_describe);
			}
		});
	});
	
	
	$(".button").click(function(){
		var code1 = $('.summernote').summernote('code');
		$("#summernote").val(code1);
		$("#fm").submit();
		alert(code1);
	});
</script>
</html>
