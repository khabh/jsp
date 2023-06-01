<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>List Collection</h4>
	<%
	ArrayList<Person> pList = new ArrayList<Person>();
	pList.add(new Person("abc", 55));
	pList.add(new Person("def", 12));
	%>
	<c:set var="personList" value="<%= pList %>" scope="request" />
	<ul>
		<li>name : ${ requestScope.personList[0].name }</li>
		<li>age : ${ personList[0].age }</li>
	</ul>
	
	<h4>Map Collection</h4>
	<%
	Map<String, Person> pMap = new HashMap<String, Person>();
	pMap.put("personArgs1", new Person("hig", 13));
	pMap.put("personArgs2", new Person("klm", 14));
	%>
	<c:set var="personMap" value="<%= pMap %>" scope="request" />
	<ul>
		<li>name : ${ requestScope.personMap.personArgs2.name }</li>
		<li>age : ${ personMap.personArgs2.age }</li>
	</ul>
</body>
</html>