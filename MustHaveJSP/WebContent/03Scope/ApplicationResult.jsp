<%@page import="java.util.Map"%>
<%@page import="common.Person"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String, Person> maps
		= (Map<String, Person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet();
	for (String key : keys) {
		Person person = maps.get(key);
		out.println(String.format("name : %s, age : %d<br/>",
				person.getName(), person.getAge()));	
	}
	%>
</body>
</html>