<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.congqian.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<% User user = (User)request.getAttribute("user"); %>
	<form action="<%=request.getContextPath()%>/updatedo.udo" method="post">
		<table style="margin: 100px; padding: 50px; border: 1px #ccc solid">
			<input type="hidden" name="id" value="<%=user.getId() %>" />
			<%
				String note = (String)request.getAttribute("note");
				if(note != null && !"".equals(note)){
				
			%>
			<tr>
				<td style = "text-align:conter; color: red; font-weight: bolder;"><%=note %></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" value="<%=user.getUsername() %>"/></td>
			</tr>
			<tr>
				<td>用户密码：</td>
				<td><input type="password" name="password" value="<%=user.getPassword() %>"/></td>
			</tr>
			<tr>
				<td>用户地址：</td>
				<td><input type="text" name="address" value="<%=user.getAddress() %>" /></td>
			</tr>
			<tr>
				<td>用户电话：</td>
				<td><input type="text" name="phoneNo" value="<%=user.getPhoneNo() %>" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: conter;">
					<input type="submit" value="修改用户" />
					<a href="<%=request.getContextPath()%>/index.jsp">返回</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>