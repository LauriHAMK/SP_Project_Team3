<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="app.*"%>
<%@ page import="dao.dao"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>

<body>

    <h1>Vastaa kysymyksiin</h1>
    <br><br>
    <form method="post" action="bestCandidates">
        <c:forEach var="question" items="${sessionScope.allquestions}">
            <b>${question.id}: </b>${question.question} <br><br>
            <input type="radio" id="${question.id}1" name="${question.id}" value="1"><label for="${question.id}1"> 1. Täysin
                eri mieltä</label><br> <input type="radio" id="${question.id}2" name="${question.id}" value="2"><label for="${question.id}2"> 2. Eri mieltä</label>
            <br> <input type="radio" id="${question.id}3" name="${question.id}" value="3"> <label for="${question.id}3">3. Neutraali</label>
            <br> <input type="radio" id="${question.id}4" name="${question.id}" value="4"> <label for="${question.id}4">4. Samaa mieltä</label>
            <br> <input type="radio" id="${question.id}5" name="${question.id}" value="5"><label for="${question.id}5"> 5. Täysin samaa mieltä</label>
            <br><br>

        </c:forEach>

        <input type="submit" value="Tallenna" class="button">
    </form>

</body>

</html>
