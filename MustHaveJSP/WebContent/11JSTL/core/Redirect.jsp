<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - redirect</title>
</head>
<body>
	<c:set var="requestVar" value="MustHave" scope="request" />
	<!-- redirect이기 때문에 request 영역은 공유되지 않음 -->
	<c:redirect url="/11JSTL/inc/OtherPage.jsp">
		<c:param name="user_param1" value="출판사"></c:param>
		<c:param name="user_param2" value="골든래빗"></c:param>
	</c:redirect>
</body>
</html>