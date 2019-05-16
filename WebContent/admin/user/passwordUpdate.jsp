<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/jquery.select.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/admin/js/WdatePicker.js"></script>
<%-- <script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/editor_api.js"></script> --%>
<title>卡通玩具销售系统后台</title>
</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<h2 class="subfild">
					<span>密码修改</span>
				</h2>
				<form method="post">
					<input type="hidden" name="id" value="${ adminUserInfo.id }"/>
					<div class="subfild-content base-info">
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>新密码</label>
							<div class="kv-item-content">
								<input type="password" name="password" placeholder="请输入新密码" />
							</div>
							<span class="kv-item-tip">密码位数请输入6位以上</span>
						</div>
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>再次输入</label>
							<div class="kv-item-content">
								<input type="password" name="password1" placeholder="请输入新密码" />
							</div>
						</div>
					</div>
					<div class="buttons">
						<input class="button" type="button" value="确认修改" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$("input[class='button']").click(function() {
		var id = $("input[name='id']").val();
		var password = $("input[name='password']").val();
		var password1 = $("input[name='password1']").val();
		if(id == null){
			window.location.href = "${ pageContext.request.contextPath }/admin/login.jsp";
		}else{
			if(password != password1){
				alert("输入两次密码不一样");
			}else{
				$.ajax({
					type:'post',
					url:'${ pageContext.request.contextPath }/updatePassword.audo',
					data:$('form').serializeArray(),
					success:function(data){
						alert("修改成功");
						$("input[name='password']").val("");
						$("input[name='password1']").val("");
					},
					error:function(){
						alert("修改失败");
					}
				});
			}
		}
	});
	/* $('select').select();
	showRemind('input[type=text],textarea', 'color5');
	UM.getEditor('content'); */
</script>
</html>
