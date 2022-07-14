<%@page import="java.util.Enumeration"%>
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
		session.setAttribute("n1", "첫번째");
		session.setAttribute("n2", "두번째");
		session.setAttribute("n3", "세번째");
		
		out.print( "<h3> 세션값을 삭제 하기 전 </h3>");
		Enumeration names;
		names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name=names.nextElement().toString();
			String value=session.getAttribute(name).toString();
			out.print(name + " : " + value + "<br>" );
		}
		
		session.removeAttribute("n2");
		
		out.print("<br> <h3> 세션값을 삭제한 후 </h3>");
		names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name=names.nextElement().toString();
			String value=session.getAttribute(name).toString();
			out.print(name + " : " + value + "<br>" );
		}
	%>
	
	
	
</body>
</html>