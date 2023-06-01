<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="iTag">
		i tag <i>italic</i>
	</c:set>
	
	<h4>기본</h4>
	<c:out value="${ iTag }" />
	
	<h4>escapeXml</h4>
	<c:out value="${ iTag }" escapeXml="false" />
	<!-- 마크업이 적용된 상태로 출력 -->
	
	<h4>default 속성</h4>
    <c:out value="${ param.name }" default="이름 없음" />
    <c:out value="" default="빈 문자열도 값입니다." />
</body>
</html>