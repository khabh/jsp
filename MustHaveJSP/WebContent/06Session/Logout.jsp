<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 로그인 관련 속성만 삭제
session.removeAttribute("UserId");
session.removeAttribute("UserName");

// 모든 속성 한꺼번에 삭제
session.invalidate();

response.sendRedirect("LoginForm.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>