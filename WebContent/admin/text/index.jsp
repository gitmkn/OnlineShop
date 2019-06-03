<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link href="dist/summernote.css" rel="stylesheet"/>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script src="dist/summernote.js"></script>
<script src="dist/lang/summernote-zh-CN.js"></script>    <!-- 中文-->

<style>
	.m{ width: 800px; margin-left: auto; margin-right: auto; }
</style>

</head>

<body>
<form id="fm" method="post" action="${ pageContext.request.contextPath }/goodsAdds.gado" enctype="multipart/form-data">
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
                        	<option value="1">女孩玩具</option>
                            <option value="2">男孩玩具</option>
                            <option value="3">婴儿玩具</option>
                        </select>
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
                <!-- <div class="kv-item ue-clear">
                	<label>是否审核</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div> -->
                
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品图</label>
                	<div class="kv-item-content file">
						<span class="text"></span>
                        <input type="file" name="uploadFile"/>
                        <input type="button" class="button normal long2" value="浏览.." />
                        <!-- <input type="file" name="uploadFile"> -->
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
            </div>






	<div class="m">		
		<div class="summernote">summernote 1</div>
	</div>
<input type="text" id="summernote" name="goods_describe">
<input type="button" class="button" value="提交">
</form>
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
});


$(".button").click(function(){
	var code1 = $('.summernote').summernote('code');
	$("#summernote").val(code1);
	$("#fm").submit();
	 /* $.ajax({
		type : "GET",
		url : "${ pageContext.request.contextPath }/goodsAdd.gado",
		data:$('form').serializeArray(),
		success : function(data) {
			alert("添加成功");
		}
	}); */
	alert(code1);
});
</script>
</html>
