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
	<br>
	<form action="userLogout.do">
		<input type="submit" value="로그아웃">
	</form> <br>
	<form action="userSecession.do">
		<input type="submit" value="회원탈퇴">	
	</form>
	<form action="viewUpdatePage.do">
		<input type="submit" value="회원정보수정">	
	</form>
	
</body>
</html>