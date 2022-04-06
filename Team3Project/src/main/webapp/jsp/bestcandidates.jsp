<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="app.*" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Best candidates</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="jsp/style/home.css" />
    <link rel="stylesheet" type="text/css" href="jsp/style/candinates.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="jsp/kuvat/favicon.ico">
    <!-- scripts -->
    <script src="jsp/js/navbar.js"></script>
</head>

<body>

    <div class="navbar">
        <ul>
            <li class="logo"> <a class="logoA"><img class="logoImg" src="jsp/kuvat/voteIcon.png" alt="LOGO" style="height: 100%; width: 2.3vw; float: left; margin-right: 0.5vw; ">LOGO</a></li>
            <div id="menu-items">
                <li><a href="jsp/index.jsp">Etusivu</a></li>
                <li><a href="showcandidates">Kaikki ehdokkaat</a></li>
                <li><a href="showquestions" class="active">Vastaa kysymyksiin</a></li>
                <li><a href="jsp/register.jsp">Rekisteröidy</a></li>
                <li><a href="">LINK5</a></li>
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i id="showhide" class="fa fa-bars" onclick="changeclass();"></i>
            </a>
        </ul>
    </div>
    <div class="signUp">
        <u>
            <h1>Kolme parasta ehdokasta sinulle</h1>
        </u>
        <br><br>
        <c:forEach var="candidate" items="${requestScope.candidates}">
            <div class="signUp">
                <div class="main">
                    <div class="container">
                        <div class="sign-up-content">

                            <h1><b>${candidate.ehdokas_id}:</b> ${candidate.etunimi} ${candidate.sukunimi}</h1>
                            <b>Puolue:</b><br>
                            ${candidate.puolue}<br><br>
                            <b>Kotipaikkakunta:</b><br>
                            ${candidate.kotipaikkakunta}<br><br>
                            <b>Ikä:</b><br>
                            ${candidate.ika}<br><br>
                            <b>Ammatti:</b><br>
                            ${candidate.ammatti}<br><br>
                            <b>Miksi haluat eduskuntaan?</b><br>
                            ${candidate.miksi_eduskuntaan}<br><br>
                            <b>Mitä asioita haluat edistää?</b><br>
                            ${candidate.mita_asioita_haluat_edistaa}<br><br>
                            <br><br>

                        </div>
                    </div>
                </div>
            </div>



        </c:forEach>

        <div class="socialMedia">
            <a href="#" class="fa fa-facebook" style="margin-left: 4.5%;"></a>
            <a href="#" class="fa fa-twitter"></a>
            <a href="#" class="fa fa-linkedin"></a>
            <p style="float:right;color:white;font-size:1.4vh; padding-right:10%;margin-top:0; "><b>Contact Us</b> <br> Oma nimi <br> <a class="email" href="">emal.email@email.com </a></p>
        </div>

        <div class="footer">
            <h4 class="tekijä">Sivun tekijät Lauri Jokinen, Miska Luukkonen, Juha Kärnä</h4>
        	<h4 class="copiright">@ 2022 Lauri Jokinen, Miska Luukkonen, Juha Kärnä All rights reserved</h4>
            <div style="clear: both"></div>
        </div>

</body>

</html>
