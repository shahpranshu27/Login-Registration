<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<link rel="stylesheet" type="text/css" href="style1.css">
<body>
<div class="container">
		<h1>Login</h1>
		<form action="LoginServlet" method="post">
			<label for="username">Username</label>
			<input type="text" id="username" name="username" required/> <br>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required/> <br>
			<button type="submit">Login</button>
		</form>
		<br>
		<p><a href="index.html">Back</a></p>
		
		<!-- Display error message if login fails! -->
		<% String error = request.getParameter("error");
			if(error!=null && error.equals("1")){ %>
				<p style="color: red;">Invalid username or password!</p>
		<% 	} %>
		
		<% String rs = request.getParameter("registration");
			if(rs!=null && rs.equals("success")){ %>
				<p style="color: green; font-weight: bold">Registration Successful!</p>
		<% 	} %>
	</div>
</body>
</html>