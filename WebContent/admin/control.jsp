<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String ka = (String) session.getAttribute("adminUserlogin");
	if (ka == null)
		ka = "";
	if (!ka.equals("login")) {
%>
<script>
 alert("请登录!!!");
 window.document.location.href="<%=request.getContextPath()%>/admin/login.jsp";
</script>
<%
	}
%>