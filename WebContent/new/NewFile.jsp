<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int a=20, b=10;

	int x = a+b;
	
	public int d(int a, int b){
			int c = a + b;
		
			return c;
		}	
		
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%= a %> + <%= b %> = <%= d(a,b) %>
</body>
</html>