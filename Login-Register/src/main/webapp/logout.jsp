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
	HttpSession currentSession = request.getSession(false);

	if(currentSession!=null){
		currentSession.invalidate();
	}

	response.sendRedirect("login.jsp");
	
	%>
</body>
</html>