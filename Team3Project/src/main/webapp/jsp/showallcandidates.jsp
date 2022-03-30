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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./style/home.css"/>
    <link rel="stylesheet" type="text/css" href="./style/candinates.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="kuvat/favicon.ico">
    <!-- scripts -->
    <script src="./js/navbar.js"></script>
</head>
<body>
    <div class="navbar">
        <ul>
            <li class="logo"> <a class="logoA"><img class="logoImg" src="./kuvat/voteIcon.png" alt="LOGO" style="height: 100%; width: 2.3vw; float: left; margin-right: 0.5vw; ">LOGO</a></li>
            <div id="menu-items">
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="">LINK2</a></li>
                    <li><a href="">LINK3</a></li>
                    <li><a href="register.html">SIGN UP</a></li>
                    <li ><a href="" class="active">CANDINATES</a></li>
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i id="showhide" class="fa fa-bars" onclick="changeclass();"></i>
            </a>
        </ul>
    </div>

<c:forEach var="candidate" items="${sessionScope.allcandidates}" >

<div class="signUp">
    <div class="main">
    <div class="container">
        <div class="sign-up-content">

<h1><b>${candidate.ehdokas_id}:</b> ${candidate.etunimi} ${candidate.sukunimi}</h1>
<b>Puolue:</b><br>
${candidate.puolue}<br>
<b>Kotipaikkakunta:</b><br>
${candidate.kotipaikkakunta}<br>
<b>Ik�:</b><br>
${candidate.ika}<br>
<b>Ammatti:</b><br>
${candidate.ammatti}<br>
<b>Miksi haluat eduskuntaan?</b><br>
${candidate.miksi_eduskuntaan}<br>
<b>Mit� asioita haluat edist��?</b><br>
${candidate.mita_asioita_haluat_edistaa}<br>
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
    <h4 class="tekijä">Sivun tekijä Juha Kärnä</h4>
    <h4 class="copiright">© 2022 Juha Kärnä All rights reserved</h4>
    <div style="clear: both"></div>
</div>

</body>
</html>