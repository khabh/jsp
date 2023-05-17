<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage = "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Error Page</title>
</head>
<body>
<h2>An error occurred during service.</h2>
<p> 
caused by : <%= exception.getClass().getName()%> <br />
message : <%= exception.getMessage() %>
</p>
</body>
</html>