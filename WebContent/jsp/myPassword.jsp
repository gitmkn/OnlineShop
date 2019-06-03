<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="control.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>卡通玩具销售系统</title>
<link rel="stylesheet" type="text/css" href="../res/static/css/main.css">
<link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
<script type="text/javascript" src="../res/layui/layui.js"></script>
<script type="text/javascript" src="../res/static/js/jquery.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>

<body>
	<%@ include file="head.jsp"%>
	<div class="content content-nav-base commodity-content">
		<%@ include file="nav.jsp"%>
		<div class="commod-cont-wrap">
			<div class="commod-cont w1200 layui-clear">
				<%@ include file="personal_nav.jsp"%>
				<div class="right-cont-wrap">
					<div class="right-cont">
					<div class="cont-list layui-clear" id="list-cont">
						<fieldset class="layui-elem-field layui-field-title">
 <!--  <legend>初始赋值演示</legend> -->
</fieldset>
 
<form class="layui-form" lay-filter="example">
  <input type="hidden" name="id" value="${ UserInfo.id }">
  <div class="layui-form-item">
    <label class="layui-form-label">输入框</label>
    <div class="layui-input-block">
      <input type="text" name="username" disabled="disabled" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">新密码</label>
    <div class="layui-input-block">
      <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">新密码</label>
    <div class="layui-input-block">
      <input type="password" name="password1" placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
    </div>
  </div>
</form>
					</div>
				</div>
			</div>
</div>
		</div>
		<%@ include file="foot.jsp"%>
</body>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;

	  //监听提交
	  form.on('submit(demo1)', function(data){
		if(data.field.password == data.field.password1){
			if(data.field.password == ""){
				layer.alert('密码不能为空', {
					title: '密码错误'
				})
			}else{
				$.ajax({
					type:'post',
					url:'${ pageContext.request.contextPath }/updatePassword.udo',
					data:$('form').serializeArray(),
					dataType:"TEXT",
					success:function(ed) {
	                    if(ed == "修改成功"){
	                    	layer.alert(ed, {
	        					title:'修改信息提示'
	        				})
	        				return true;
	                    }else{
	                    	layer.alert('修改失败', {
	            				title: '密码错误'
	            			})
	                    }
	                },
	                error:function(msg) {
	                    console.log(msg);
	                }
				});
			}
		}else{
			layer.alert('填入两次新密码不同', {
				title: '密码错误'
			})
		}
	    
	    return false;
	  });
	 
	  //表单初始赋值
	  form.val('example', {
	    "username": "${ UserInfo.username }" // "name": "value"
	  })
	  
	  
	});
	  
</script>


</html>