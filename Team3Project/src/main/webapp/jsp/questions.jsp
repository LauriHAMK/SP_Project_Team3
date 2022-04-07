<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="app.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="jsp/yllapito.jsp">Ylläpito</a> <br> <br>
<a href="jsp/addquestion.jsp">Add Question</a> 
<br><br>

<c:forEach var="questions" items="${sessionScope.allquestions}" >
	<tr>
		<td>${questions.id }</td>
		<td>${questions.question }</td>
		<td>
		<br>
			<a href="/editquestion?kysymys_id=${questions.id }">Edit</a>
			<a href="/deletequestion?kysymys_id=${questions.id }">Delete</a>
		</td>
		
		<br>
	</tr>

</c:forEach>

</body>
</html>