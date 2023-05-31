<%@page import="el.MyELClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="mytag" uri="/WEB-INF/MyTagLib.tld" %>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("myClass", myClass);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>call method</h3>
	${myClass.getGender("001225-3000000")}<br/>
	${myClass.getGender("001225-2000000")}
	
	<h3>call static method</h3>
	${ MyELClass.showGugudan(7) }
	
	<h3>TLD file call</h3>
	<p>mytag:isNumber("100") => ${ mytag:isNumber("100") }</p>
</body>
</html>