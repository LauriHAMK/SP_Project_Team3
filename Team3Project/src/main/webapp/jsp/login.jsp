<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>voting site</title>
    <link rel="stylesheet" type="text/css" href="./style/home.css"/>
    <link rel="stylesheet" type="text/css" href="./style/register.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="kuvat/favicon.ico">
    <!-- scripts -->
    <script src="jquery-3.5.1.min.js"></script>
    <script src="scripts.js"></script>
    <script src="navbar.js"></script>
</head>
<body> 
    <div class="navbar">
        <ul>
            <li class="logo"> <a class="logoA"><img class="logoImg" src="./kuvat/voteIcon.png" alt="LOGO" style="height: 100%; width: 2.3vw; float: left; margin-right: 0.5vw; ">LOGO</a></li>
            <div id="menu-items">
                    <li><a href="index.jsp">Etusivu</a></li>
                    <li><a href="/showcandidates">Kaikki ehdokkaat</a></li>
                    <li><a href="/showquestions">Vastaa kysymyksiin</a></li>
                    <li><a href="register.jsp" class="active">Rekisteröidy</a></li>
                    <li ><a href="">LINK5</a></li>
            </div>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i id="showhide" class="fa fa-bars" onclick="changeclass();"></i>
            </a>
        </ul>
    </div>

    <!-- <div class="header"></div> -->

    <div class="row">
        <!-- <div class="intro">
         </div> -->
        <div class="signUp">
            <div class="main">
                <h1>Log In</h1>
                <div class="container">
                <div class="sign-up-content">
               <form action="/adminlogin" method="post">
               <h2 class="form-title">What type of user are you ?</h2>
                <div class="form-radio">
<!--                 <input type="radio" name="member_level" value="newbie" id="newbie" checked="checked" /> -->
<!--                 <label for="newbie">User</label> -->
<!--                 <input type="radio" name="member_level" value="average" id="average" /> -->
<!--                 <label for="average">Candinate</label> -->
                <input type="radio" name="member_level" value="master" id="master" />
                <label for="master">Admin</label>
                </div>
						    <div class="form-textbox">
               				<label for="name">Username:</label>
               				<input type="text" name="username" id="name" />
                			</div>
						    <div class="form-textbox">
                			<label for="pass">Password:</label>
                			<input type="password" name="password" id="pass" />
                			</div>
				
                <div class="form-group">
                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                <label for="agree-term" class="label-agree-term" style="color: white;"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
                </div>
                <div class="form-textbox">
                <input type="submit" name="submit" id="submit" class="submit" value="Log In" />
                </div>
                </form>
                <p class="loginhere" style="color: white;">
                Dont have Account ?<a href="register.jsp" class="loginhere-link"> Sign up</a>
                </p>
                </div>
                </div>
                </div>
         </div>
    </div>

    <div class="socialMedia">
        <a href="#" class="fa fa-facebook" style="margin-left: 4.5%;"></a>
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-linkedin"></a>
        <p style="float:right;color:white;font-size:1.4vh; padding-right:10%;margin-top:0; "><b>Contact Us</b> <br> Oma nimi <br> <a class="email" href="">emal.email@email.com </a></p>
    </div>

    <div class="footer">
        <h4 class="tekijï¿½">Sivun tekijät Lauri Jokinen, Miska Luukkonen, Juha Kärnä</h4>
        <h4 class="copiright">@ 2022 Lauri Jokinen, Miska Luukkonen, Juha Kärnä¤ All rights reserved</h4>
        <div style="clear: both"></div>
    </div>


</body>
</html>
	