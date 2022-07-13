<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String id="test";
	String pw="1234";
	String name="이";
	
	if(id.equals(request.getParameter("userid")) && pw.equals(request.getParameter("userpw"))){
		response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
	}else{
		response.sendRedirect("login.jsp");
	}
%>

</head>
<body>
	
</body>
</html>