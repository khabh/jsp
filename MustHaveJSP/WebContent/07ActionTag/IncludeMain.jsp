<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String outerPath1 = "./inc/OuterPage1.jsp";
String outerPath2 = "./inc/OuterPage2.jsp";

pageContext.setAttribute("pAttr", "hello");
request.setAttribute("rAttr", "world");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>지시어로 페이지 포함</h2>
	<%@ include file="./inc/OuterPage1.jsp" %>
	<%--@ include file="<%=outerPath1OuterPage1%>" --%>
	<p>외부 파일에 선언한 변수 : <%= newVar1 %></p>
	
	<h3>액션 태그로 페이지 포함</h3>
	<jsp:include page="./inc/OuterPage2.jsp" />
	<jsp:include page="<%=outerPath2 %>" />
	<p>외부 파일에 선언한 변수 : <%--=newVar2 --%></p>

</body>
</html>