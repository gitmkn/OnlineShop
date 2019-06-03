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
					<p>添加管理员</p>
				</h2>
				
				<form method="post" action="${ pageContext.request.contextPath }/adminAdd.audo">
					<div class="subfild-content base-info">
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>管理员名</label>
							<div class="kv-item-content">
								<input type="text" name="name" placeholder="请输入管理员名" />
							</div>
						</div>
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>再次输入</label>
							<div class="kv-item-content">
								<input type="password" name="password" value="123456"/>
							</div>
							<span class="kv-item-tip">初始密码123456</span>
						</div>
					</div>
					<div class="buttons">
						<input class="button" type="submit" value="添加" />
						<a onclick="bank()" >返回</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
function bank(){
	window.document.location.href="${ pageContext.request.contextPath }/admin/user/adminList.jsp";
}
</script>
</html>
