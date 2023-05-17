<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="IncludeFile.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include example</title>
</head>
<body>
<%
out.println("오늘 날짜 : " + today);
out.println("<br />");
out.println("내일 날짜: " + tomorrow);
%>
</body>
</html>