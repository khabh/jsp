<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어</title>
</head>
<body>
	<h2>각 영역에 저장된 속성 읽기</h2>
	<h3>각 영역에 저장된 속성 읽기</h3>
	<ul>
		<li>page scope : ${ pageScope.scopeValue }</li>
		<li>request scope : ${ requestScope.scopeValue }</li>
		<li>session scope : ${ sessionScope.scopeValue }</li>
		<li>application scope : ${ applicationScope.scopeValue }</li>
	</ul>
	
	<h3>영역 지정 없이 속성 읽기</h3>
	<p>${ scopeValue }</p>
</body>
</html>