<%@page import="com.poke.domain.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestUserLoginSuccess</title>
</head>
<body>
	<%
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
		out.print(user.getId()+"님 환영합니다.");
	%>
</body>
</html>