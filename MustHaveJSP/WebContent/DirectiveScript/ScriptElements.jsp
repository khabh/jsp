<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
public int add(int num1, int num2) {
	return num1 + num2;
}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>script element</title>
</head>
<body>
<%
int result = add(10, 20);
%>
result 1 : <%= result %> <br />
result 2 : <%= add(30, 40) %>
</body>
</html>