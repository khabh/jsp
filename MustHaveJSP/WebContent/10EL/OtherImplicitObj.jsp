<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.CookieManager" %>
<%
CookieManager.makeCookie(response, "ELCookie", "el", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키값 읽기</h3>
	<li>ELCookie : ${ cookie.ELCookie.value } </li>
	
	<h3>Http header</h3>
	<ul>
		<li>host : ${ header.host }</li>
		<li>user-agent : ${ header['user-agent'] }</li>
		<li>cookie : ${ header.cookie }</li>
	</ul>
	
	<h3>context init param</h3>
	<li>OracleDriver : ${ initParam.OracleDriver }</li>
	
	<h3>context root path</h3>
	<li>${ pageContext.request.contextPath }</li>
</body>
</html>