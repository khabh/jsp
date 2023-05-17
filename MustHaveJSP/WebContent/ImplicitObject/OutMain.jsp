<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - out</title>
</head>
<body>
<%
out.println("출력되지 않는 텍스트");
out.clearBuffer();

out.println("<h2>내장 객체</h2>");

out.println("출력 버퍼의 크기 : " + out.getBufferSize() + "<br />");
out.println("남은 버퍼의 크기 : " + out.getRemaining() + "<br />");
out.flush();

out.println("flush 후 남은 버퍼의 크기 : " + out.getRemaining() + "<br />");
%>
</body>
</html>