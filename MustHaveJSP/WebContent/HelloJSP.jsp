<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
    String s1 = "JSP ";
    String s2 = "Hello";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HelloJSP</title>
</head>
<body>
	<h1> <%= s1%></h1>
	<%
	out.println(s1 + s2);
	%>
</body>
</html>