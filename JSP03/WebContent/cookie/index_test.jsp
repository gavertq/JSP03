<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: skyblue;">CARE LAB</h1>
	<h3>방문해주셔서 감사합니다</h3>
	
	<%
		boolean boo = true;
		
		Cookie cookieArr[] = request.getCookies();
		if(cookieArr!=null){
			for(Cookie c : cookieArr){
				out.print("id: "+c.getName()+"<br>");
				out.print("value: "+c.getValue()+"<hr>");
				
				if(c.getValue().equals("tttCookie")){	//쿠키값이 있다면 
					boo=false;					 		//팝업창 안띄우기 위해 boo를 true로
				}
			}
		}
		
	%>
<%if(boo==true){ %>
	<script type="text/javascript">
		window.open("popup_test.jsp", "","width=300, height=500, left=500, top=500")
	</script>
<%} %>
</body>
</html>