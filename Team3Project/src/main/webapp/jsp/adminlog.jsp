<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Admin Login</title>
  </head>

  <body>
    <h1>Log in</h1>

	<form action="/adminlogin" method="post">
		<input type="text" name="username" value="">
		<input type="password" name="password" value="">
		
		<input type="submit" name="send" value="Check">
	</form>
	
  </body>
</html>