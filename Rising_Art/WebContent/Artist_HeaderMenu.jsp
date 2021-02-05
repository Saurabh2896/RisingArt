<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Tinker Template
http://www.templatemo.com/tm-506-tinker
-->		
		<%
		String id =(String) session.getAttribute("aid");
        if (id != null) {  
		
		%>
		
        <title>Rising Art</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
        
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <link rel="stylesheet" href="css/lightbox.css">
        <link rel="stylesheet" href="css/Dp.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
		
<body>
		<% 
				
                String name=(String) session.getAttribute("name");
                String date=(String) session.getAttribute("date");
                String gender=(String) session.getAttribute("gender");
                String email=(String) session.getAttribute("email");
                String mobile=(String) session.getAttribute("mobile");
                String add=(String) session.getAttribute("add");
                String city=(String) session.getAttribute("city");
                String pincode=(String) session.getAttribute("pincode");
				
                //out.println("<center>");
                /* out.println("<br>"+"Login Successfullly"+"<br>");
                out.println("<br>");
                out.println("Name ="+name+"<br>");
                out.println("Date of Birth ="+date+"<br>");
                out.println("Email ="+email+"<br>");
                out.println("Mobile ="+mobile+"<br>");
                out.println("Address ="+add+"<br>");
                out.println("City ="+city+"<br>");
                out.println("Pincode ="+pincode+"<br>"); */
         %>
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand scroll-top"><em><font color="red">Rising</font></em>ART</a>
                </div>
                <!--/.navbar-header-->
                <div id="main-nav" class="collapse navbar-collapse" >
                    <ul class="nav navbar-nav">
                        <!-- <li><a href="#" class="scroll-top" class="navbar-brand scroll-top"><b>Home</b></a></li> -->
                        <!-- <li><a href="#" class="scroll-link" data-id="about">About Us</a></li> -->
                        <li class="dropdown">
                        	<a><b>Gallery</b></a>
                        	<div class="dropdown-content">
  								<a href=""><font size="2px"><b>ADD IMAGES</b></font></a><br>
							</div>
                        </li>
                        <!-- <li><a href="#" class="scroll-link" data-id="blog" class="navbar-brand scroll-top"><b>Our Post</b></a></li> -->
                        <li class="dropdown">
                        	<a><b>Exhibition</b></a>
                        	<div class="dropdown-content">
  								<a href=""><font size="2px"><b>MANAGE</b></font></a><br>
  								<a href="Login_Template/artist_login.html"><font size="2px"><b>ADD</b></font></a>
							</div>
                        </li>
                        <li class="dropdown">
  							<a><b><span><%=name %></span></b></a>
  							<div class="dropdown-content">
  								<a href="#" class="scroll-link" data-id="blog" class="navbar-brand scroll-top"><font size="2px"><b>PROFILE</b></font></a><br>
  								<a href="Registration_Template/index_ArtistEditInfo.jsp"><font size="2px"><b>EDIT PROFILE</b></font></a><br>
  								<a href="Login_Template/index_ArtistLogout.jsp"><font size="2px"><b>LOGOUT</b></font></a>
							</div>
                        </li>
                    </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
        <!--/.container-->
    </div>
    <!--/.header-->
 