<%@page import="com.poke.domain.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateNickname</title>
</head>
<body>
	<%
		UserInfoVO user = (UserInfoVO)session.getAttribute("user");
	%>
	<form action="updateNickname.do">
		현재 닉네임 : <span><%=user.getNickname() %></span><br>
		변경할 닉네임 : <input type="text" name="changeNickname">
		<input type="submit" value="변경하기">
	</form>
</body>
</html>