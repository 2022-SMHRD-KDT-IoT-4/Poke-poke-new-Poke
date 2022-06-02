<%@page import="com.poke.domain.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateEmail</title>
</head>
<body>
	<%
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
	%>
	<form action="updateEmail.do">
		현재 이메일 : <span><%=user.getEmail() %></span><br>
		변경할 이메일 : <input type="text" name="changeEmail">
		<input type="submit" value="변경하기">
	</form>
</body>
</html>