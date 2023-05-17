<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>page - autoFlush, buffer</title>
</head>
<body>
<%
for (int i = 0; i <= 100; i++) {
	out.println("abced12345");
}
%>
</body>
</html>