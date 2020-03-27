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
	//session.removeAttribute("age");
	//session.setMaxInactiveInterval(5);	//5초 뒤 모든 세션 삭제
	session.invalidate();	//바로 모든 세션 삭제
%>

<a href="setSession.jsp">setSession 이동</a>&nbsp;&nbsp;
<a href="getSession.jsp">getSession 이동</a>&nbsp;&nbsp;
</body>
</html>