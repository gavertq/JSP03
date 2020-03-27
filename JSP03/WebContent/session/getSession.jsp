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
String id = (String)session.getAttribute("id");
String age = (String)session.getAttribute("age");
String name = (String)session.getAttribute("name");
%>
id: <%=id %><br>age: <%=age %><br>name: <%=name %><br>
<a href="setSession.jsp">setSession 이동</a>&nbsp;&nbsp;
<a href="delSession.jsp">delSession 이동</a>&nbsp;&nbsp;
</body>

</html>