<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "request stirng");
request.setAttribute("requestPerson", new Person("person", 31));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>remove request attribute</h2>
<%
	request.removeAttribute("requestString");
	request.removeAttribute("requestInteger");
%>
<h2>get request attribute</h2>
<%
Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul>
	<li>String 객체 : <%= request.getAttribute("requestString") %></li>
	<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
</ul>
<h2>포워드 된 페이지에서 request 영역 속성값 읽기</h2>
<%
request.getRequestDispatcher(
			"RequestForward.jsp?paramHan=han&paramEng=English")
		.forward(request, response);
%>
</body>
</html>