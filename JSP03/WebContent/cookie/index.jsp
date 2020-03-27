<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>쿠키는 클라이언트가 값을 가지고 있어 보안 취약
	섹션은 서버가 값을 가지고 있어 보안성 높음</p>
	
	<h1 style="color: skyblue;">CARE LAB</h1>
	<h3>방문해주셔서 감사합니다</h3>
	
	<% 
	boolean boo = false;
	
	Cookie cookieArr[] = request.getCookies();
	if(cookieArr!=null){
		for(Cookie c : cookieArr){
			out.print("id: "+c.getName()+"<br>");
			out.print("value: "+c.getValue()+"<hr>");
			
			if(c.getValue().equals("myCookie")){	//쿠키값이 있다면 
				boo=true;					 		//팝업창 안띄우기 위해 boo를 true로
			}
		}
	}
	//쿠키 만들기
		Cookie cookie = new Cookie("testCookie","myCookie"); //(이름, 값)
		cookie.setMaxAge(5); //5초동안 쿠키를 살려둔다	//쿠키에 대한 새로고침은 F12 -> Application에 둥근 화살표 버튼
		response.addCookie(cookie); //사용자에게 쿠키가 간다	
		
		
	%>
<%if(!boo){ %>	<!-- boo가 flase면 팝업창 뜸. 아니면 안뜸 -->
	<script type="text/javascript">
		window.open("popup.jsp", "","width=300, height=500, left=500, top=500")
	</script>
<%} %>
</body>
</html>