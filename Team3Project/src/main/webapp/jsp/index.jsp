<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting site</title>
    <link rel="stylesheet" type="text/css" href="./style/home.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="kuvat/favicon.ico">

    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/form.js"></script>
    <script src="./js/navbar.js"></script>
</head>
<body> 
    <div class="navbar">
        <ul>
            <li class="logo"> <a class="logoA"><img class="logoImg" src="./kuvat/voteIcon.png" alt="LOGO" style="height: 100%; width: 2.3vw; float: left; margin-right: 0.5vw; ">LOGO</a></li>
            <div id="menu-items">
                    <li><a href="index.jsp" class="active">Etusivu</a></li>
                    <li><a href="/showcandidates">Kaikki ehdokkaat</a></li>
                    <li><a href="/showquestions">Vastaa kysymyksiin</a></li>
                    <li><a href="register.jsp">Rekisteröidy</a></li>
                    <li ><a href="">LINK5</a></li>
                    
                    
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i id="showhide" class="fa fa-bars" onclick="changeclass();"></i>
            </a>
        </ul>
    </div>

    <div class="header"></div>

    <div class="row">
        <div class="intro">
            <img src="./kuvat/pplWithVote.jfif" style="margin-left:8%; float:left; width:20%; height:100%;">
            <p class="introText">Welcome to our election site <br> On the menu you can find a register form <br> <br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
         </div>
        <div class="hull">
            <img src="./kuvat/voteCounts.png" style="margin-right:10%; float:right; width:20%; height:100%;">
            <p class="hullText" >Lorem ipsum <br> DEEZ <br>  <br> Tests <br> </p>
         </div>
    </div>

    <div class="socialMedia">
        <a href="#" class="fa fa-facebook" style="margin-left: 4.5%;"></a>
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-linkedin"></a>
        <p style="float:right;color:white;font-size:1.4vh; padding-right:10%;margin-top:0; "><b>Contact Us</b> <br> Oma nimi <br> <a class="email" href="">emal.email@email.com </a></p>
    </div>

    <div class="footer">
        <h4 class="tekijï¿½">Sivun tekijï¿½ Juha Kï¿½rnï¿½</h4>
        <h4 class="copiright">ï¿½ 2022 Juha Kï¿½rnï¿½ All rights reserved</h4>
        <div style="clear: both"></div>
    </div>


</body>
</html>