<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="app.*" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>All candidates</title>
</head>

<body>

    <c:forEach var="candidate" items="${sessionScope.allcandidates}">
        <h1><b>${candidate.ehdokas_id}:</b> ${candidate.etunimi} ${candidate.sukunimi}</h1>
        <b>Puolue:</b><br>
        ${candidate.puolue}<br>
        <b>Kotipaikkakunta:</b><br>
        ${candidate.kotipaikkakunta}<br>
        <b>Ikä:</b><br>
        ${candidate.ika}<br>
        <b>Ammatti:</b><br>
        ${candidate.ammatti}<br>
        <b>Miksi haluat eduskuntaan?</b><br>
        ${candidate.miksi_eduskuntaan}<br>
        <b>Mitä asioita haluat edistää?</b><br>
        ${candidate.mita_asioita_haluat_edistaa}<br>
        <br><br>

    </c:forEach>

</body>

</html>
