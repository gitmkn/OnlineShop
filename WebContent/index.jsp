<%@page import="cn.congqian.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/query.udo" method="post">
		<table style="margin: 100px; padding: 50px; border: 1px #ccc solid">
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" /></td>
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
					<input type="submit" value="查询用户" />
					<a href="<%=request.getContextPath()%>/add.jsp">注册</a>
				</td>
			</tr>
		</table>
	</form>

	<table style="margin-left: 50px;" border="1" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>用户id</td>
			<td>用户名称</td>
			<td>用户密码</td>
			<td>用户电话</td>
			<td>用户地址</td>
			<td>注册日期</td>
			<td>操作记录</td>
		</tr>
		<%
			List<User> list = (List<User>) request.getAttribute("userList");
			if (list != null && list.size()>0){
				for(User user:list){
		%>
		<tr>
			<td><%=user.getId() %></td>
			<td><%=user.getUsername() %></td>
			<td><%=user.getPassword() %></td>
			<td><%=user.getPhoneNo() %></td>
			<td><%=user.getAddress() %></td>
			<td><%=user.getRegDate() %></td>
			<td>
				<a href="<%=request.getContextPath()%>/update.udo?id=<%=user.getId() %>">编辑</a>
				<a href="<%=request.getContextPath()%>/delete.udo?id=<%=user.getId() %>">删除</a>
			</td>
		</tr>
		<%		}
			} 
		%>
	</table>
</body>
</html>