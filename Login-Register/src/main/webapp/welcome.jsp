<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mini-Project</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%
	HttpSession session1 = request.getSession(false);

	if(session1!=null && session.getAttribute("username")!=null){
		String username = (String) session1.getAttribute("username");
%>

	<div class="container">
		<h1>Welcome <%= username %> !!</h1> <br>
		
		<a href="logout.jsp">Logout</a>
	</div>
	
	<% } else{
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>