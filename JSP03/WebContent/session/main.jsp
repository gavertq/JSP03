<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>

	<%
	if((String)session.getAttribute("loginUser")==null){ response.sendRedirect("login.jsp");} //로그인 없이 주소입력으로 메인페이지에 들어오는 것을 막음
		String nick = (String)session.getAttribute("loginUser");
	%>
	<%=nick %>님 환영합니다.<br>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>