<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="common.Person"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어</title>
</head>
<body>
<h2>List Collection</h2>
<%
List<Object> aList = new ArrayList<Object>();
aList.add("hello");
aList.add(new Person("world", 10));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0 : ${ Ocean[0] }</li>
	<li>1 : ${ Ocean[1].name }, ${ Ocean[1].age }</li>
	<li>2 : ${ Ocean[2] }<!--  출력되지 않음 --></li>
</ul>
<h2>Map Collection</h2>
<%
Map<String, String> map = new HashMap<String, String>();
map.put("hello", "world");
map.put("one", "first");
pageContext.setAttribute("King", map);
%>
<ul>
	<li>hello key : ${ King["hello"] }, ${ King['hello'] }, ${ King.hello }</li>
	<li>one key : ${ King["one"] }, ${ King['one'] }, ${ King.one }</li>
</ul>
</body>
</html>