<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/add.udo" method="post">
		<table style="margin: 100px; padding: 50px; border: 1px #ccc solid">
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>用户密码：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>用户地址：</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td>用户电话：</td>
				<td><input type="text" name="phoneNo" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: conter;">
					<input type="submit" value="注册用户" />
					<a href="<%=request.getContextPath()%>/index.jsp">返回</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>