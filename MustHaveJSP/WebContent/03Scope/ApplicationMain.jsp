<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>application scope</h2>
	<%
	Map<String, Person> maps = new HashMap<>();
	maps.put("actor1", new Person("person1", 30));
	maps.put("actor2", new Person("person2", 29));
	application.setAttribute("maps", maps);
	%>
	attribute saved.
</body>
</html>