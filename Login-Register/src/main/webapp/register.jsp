<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<link rel="stylesheet" type="text/css" href="style1.css">
<body>
<div class="container">
		<h1>Register</h1>
		<form action="RegisterServlet" method="post">
			<label for="username">Username</label>
			<input type="text" id="username" name="username" required/> <br>
			<label for="email">Email</label>
			<input type="email" id="email" name="email" required/><br>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required/><br>
			<button type="submit">Register</button>
		</form>
		<br>
		<a href="index.html">Back</a>
		<% String rs = request.getParameter("registration");
			if(rs!=null && rs.equals("success")){ %>
				<p style="color: green;">Registration Successful!</p>
		<% 	} %>
	</div>
</body>
</html>