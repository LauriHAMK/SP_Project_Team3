<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="app.questions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="./editquestion" method="post" accept-charset="UTF-8">
	
	ID: <input type="text" name="kysymys_id" value="${sessionScope.questions.kysymys_id}"><br>
	Kysymys: <input type="text" name="kysymys" value="${sessionScope.questions.kysymys}"><br>
	<input type="submit" name="ok" value="edit">
	</form>
</body>
</html>