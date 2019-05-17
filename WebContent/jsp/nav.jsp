<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>卡通玩具销售系统</title>
</head>
<body>
<div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="${ pageContext.request.contextPath }/jsp/index.jsp">首页</a>
            <a href="${ pageContext.request.contextPath }/jsp/commodity.jsp">女孩玩具玩具</a>
            <a href="${ pageContext.request.contextPath }/jsp/commodity.jsp">男孩玩具</a>
            <a href="${ pageContext.request.contextPath }/jsp/commodity.jsp">婴儿玩具</a>
            <a href="${ pageContext.request.contextPath }/jsp/commodity.jsp">亲子玩具</a>
            <a href="${ pageContext.request.contextPath }/jsp/message.jsp">留言板</a>
            <a href="${ pageContext.request.contextPath }/jsp/about.jsp">关于我们</a>
            <c:if test="${ UserInfo != null}">
			<a href="${ pageContext.request.contextPath }/jsp/personal.jsp">个人中心</a>
			</c:if>
          </div>
        </div>
      </div>
    </div>
</body>
</html>