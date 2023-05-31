<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어</title>
</head>
<body>
	<%
	request.setAttribute("personObj", new Person("홍길돌", 33));
	request.setAttribute("stringObj", "I am string");
	request.setAttribute("integerObj", new Integer(99));
	%>
	<jsp:forward page="ObjectResult.jsp">
		<jsp:param value="10" name="firstNum" />
		<jsp:param value="20" name="secondNum"/>
	</jsp:forward>
</body>
</html>