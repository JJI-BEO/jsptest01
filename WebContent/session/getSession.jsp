<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>세션 값 얻어오기</h3>
	<%
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		String age = (String)session.getAttribute("age");
		int inactive = session.getMaxInactiveInterval() / 60 ;
	%>

	아이디 : <%= id %> <br>
	비밀번호 : <%= pw %> <br>
	나이 : <%= age %> <br>
	세션 유효시간 : <%=inactive %>분 <br>
	
	<input type="button" value="뒤로" onClick="history.go(-1)"> 
</body>
</html>