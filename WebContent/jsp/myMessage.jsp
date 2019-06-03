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
					<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  					<legend>个人信息</legend>
					</fieldset>
						<form class="layui-form" action="" lay-filter="example">
						<input type="hidden" name="id" value="${ UserInfo.id }">
							<div class="layui-form-item">
								<label class="layui-form-label">用户电话</label>
								<div class="layui-input-block">
									<input type="text" name="username" lay-verify="required"
										placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">性别</label>
								<div class="layui-input-block">
									<input type="radio" name="sex" value="男" title="男" checked="">
									<input type="radio" name="sex" value="女" title="女">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">用户生日</label>
								<div class="layui-input-block">
									<input type="text" name="createtime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">用户电话</label>
								<div class="layui-input-block">
									<input type="tel" name="phone" lay-verify="required|phone"
										placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">用户邮箱</label>
								<div class="layui-input-block">
									<input type="text" name="email" lay-verify="email"
										placeholder="请输入" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">用户地址</label>
								<div class="layui-input-block">
									<input type="text" name="address" lay-verify="required"
										placeholder="请输入" autocomplete="off" class="layui-input">
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
		<%@ include file="foot.jsp"%>
</body>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  laydate.render();
  
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
//监听提交
  form.on('submit(demo1)', function(data){
	  $.ajax({
			type:'post',
			url:'${ pageContext.request.contextPath }/update.udo',
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
      				title: '信息错误'
      			})
              }
          },
          error:function(msg) {
              console.log(msg);
          }
		});
    return false;
  });
 
  //表单初始赋值
  form.val('example', {
    "username": "${ UserInfo.username }" // "name": "value"
    ,"sex": "${ UserInfo.sex }"
    ,"createtime":"${ UserInfo.createtime }"
    ,"phone": "${ UserInfo.phone}"
    ,"email": "${ UserInfo.email }"
    ,"address": "${ UserInfo.address }"
  })
});
</script>


</html>