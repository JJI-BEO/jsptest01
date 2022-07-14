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
		String id = "test";
		String pw = "123";
		String name = "성윤정";
		
		String id2 = request.getParameter("id");
		String pw2 = request.getParameter("pw");
		if(id.equals(id2) && pw.equals(pw2)){
			session.setAttribute("loginUser", name);
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>