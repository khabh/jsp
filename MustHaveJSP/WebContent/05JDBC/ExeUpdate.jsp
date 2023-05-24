<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 추가 테스트</h2>
<%
JDBConnect jdbc = new JDBConnect();

String id = "test1";
String pass = "1111";
String name = "testMember1";

String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1, id);
psmt.setString(2, pass);
psmt.setString(3, name);

int inResult = psmt.executeUpdate();
out.println(inResult + "rows inserted");

jdbc.close();
%>
</body>
</html>