<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setSession.jsp<br>
<%
session.setAttribute("id", "test");
session.setAttribute("age", "23");
session.setAttribute("name", "zzz");
%>
<h1>세션 설정</h1>
<a href="getSession.jsp">getSession 이동</a>&nbsp;&nbsp;
<a href="delSession.jsp">delSession 이동</a>&nbsp;&nbsp;
</body>
</html>