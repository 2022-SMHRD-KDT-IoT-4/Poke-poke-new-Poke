<%@page import="com.poke.domain.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdatePassword</title>
</head>
<body>
	<%
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
	%>
	<form action="updatePassword.do">
		현재 패스워드 : <span><%=user.getPassword() %></span><br>
		변경할 패스워드 : <input type="password" name="changePassword">
		<input type="submit" value="변경하기">
	</form>
</body>
</html>