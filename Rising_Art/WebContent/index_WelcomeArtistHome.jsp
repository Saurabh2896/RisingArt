<%@page import="java.sql.*"%>
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
		 Connection con;
        Statement st;
        ResultSet rs;
		try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
            st = con.createStatement();
            rs = st.executeQuery("select * from artist where artist_id='"+id+"'");

            while (rs.next()) {
                String name=rs.getString("aname");
                String date=rs.getString("a_date");
                String gender=rs.getString("gender");
                String email=rs.getString("email");
                String mobile=rs.getString("phone");
                String add=rs.getString("address");
                String city=rs.getString("city");
                String pincode=rs.getString("zipcode");
                String password=rs.getString("password");
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
  								<a href="Registration_Template/index_ArtistAddImg.jsp"><font size="2px"><b>ADD IMAGES</b></font></a><br>
							</div>
                        </li>
                        <!-- <li><a href="#" class="scroll-link" data-id="blog" class="navbar-brand scroll-top"><b>Our Post</b></a></li> -->
                        <li class="dropdown" >
                        	<a><b>Exhibition</b></a>
                        	<div class="dropdown-content">
  								<a href="#"><font size="2px"><b>MANAGE</b></font></a><br>
  								<a href="#"><font size="2px"><b>ADD</b></font></a>
							</div>
                        </li>
                        <li class="dropdown">
  							<a><b><span><%=name %></span></b></a>
  							<div class="dropdown-content">
  								<a href="#" class="scroll-link" data-id="blog" class="navbar-brand scroll-top"><font size="2px"><b>PROFILE</b></font></a><br>
  								<a href="Registration_Template/index_ArtistEditInfo.jsp"><font size="2px"><b>EDIT PROFILE</b></font></a><br>
  								<a href="Registration_Template/index_ViewCustomerArtRequest.jsp"><font size="2px"><b>ORDER REQUEST</b></font></a>
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
 
 	
 
 
 
     <div class="parallax-content baner-content" id="home">
        <div class="container">
            <div class="text-content">
                <marquee><h2><em><font color="#1A1AFF">Rising</font></em> <span><font color="white">ART<br>Let's think Artistic!!</font></span></h2></marquee>
                
               <!--  <div class="primary-white-button">
                    <a href="#" class="scroll-link" data-id="about">Let's Start</a>
                </div> -->
            </div>
        </div>
    </div>

    <!-- <section id="about" class="page-section">
        <div class="container" style="color:black">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <div class="icon">
                            <img src="img/service_icon_01.png" alt="">
                        </div>
                        <h4>Smart Notifications</h4>
                        <div class="line-dec"></div>
                        <p>Curabitur non risus fringilla libero accumsan molestie et quis justo. Cras aliquam tempor sem, vestibulum facilisis dui. Mauris malesuada porta.</p>
                        <div class="primary-blue-button">
                            <a href="#" class="scroll-link" data-id="portfolio">Continue Reading</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <div class="icon">
                            <img src="img/service_icon_02.png" alt="">
                        </div>
                        <h4>Lovely Web Design</h4>
                        <div class="line-dec"></div>
                        <p>Suspendisse magna mauris, convallis vel finibus eget, lobortis dictum neque. Nam tincidunt metus nec eros dignissim consectetur. Duis mollis.</p>
                        <div class="primary-blue-button">
                            <a href="#" class="scroll-link" data-id="portfolio">Continue Reading</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <div class="icon">
                            <img src="img/service_icon_03.png" alt="">
                        </div>
                        <h4>Quick Support</h4>
                        <div class="line-dec"></div>
                        <p>Etiam quis ullamcorper augue. Morbi leo libero, malesuada eget eleifend eu, interdum sed augue. Sed tempor mi quis rhoncus convallis.</p>
                        <div class="primary-blue-button">
                            <a href="#" class="scroll-link" data-id="portfolio">Continue Reading</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <div class="icon">
                            <img src="img/service_icon_04.png" alt="">
                        </div>
                        <h4>One-Click Setup</h4>
                        <div class="line-dec"></div>
                        <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent viverra, nunc et mollis fermentum.</p>
                        <div class="primary-blue-button">
                            <a href="#" class="scroll-link" data-id="portfolio">Continue Reading</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->

    <!-- <section id="portfolio">
        <div class="content-wrapper">
            <div class="inner-container container">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <div class="section-heading">
                            <h4>Our Gallery</h4>
                            <div class="line-dec"></div>
                            <p>This is the platform where the arts or art crafts of the artists can be displayed for the visitor's view.</p>
                            <div class="filter-categories">
                                <ul class="project-filter">
                                    <li class="filter" data-filter="all"><span>Show All</span></li>
                                    <li class="filter" data-filter="branding"><span>Branding</span></li>
                                    <li class="filter" data-filter="graphic"><span>Graphic</span></li>
                                    <li class="filter" data-filter="nature"><span>Nature</span></li>
                                    <li class="filter" data-filter="animation"><span>Animation</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="projects-holder-3">
                            <div class="projects-holder">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 project-item mix nature">
                                      <div class="thumb">
                                            <div class="image">
                                                <a href="img/portfolio_big_item_01.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_01.jpeg"></a>
                                            </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 project-item mix animation">
                                      <div class="thumb">
                                        <div class="image">
                                                <a href="img/portfolio_big_item_02.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_02.jpeg"></a>
                                            </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 project-item mix branding">
                                      <div class="thumb">
                                            <div class="image">
                                                <a href="img/portfolio_big_item_03.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_03.jpeg"></a>
                                            </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 project-item mix graphic nature">
                                        <div class="thumb">
                                            <div class="image">
                                                <a href="img/portfolio_big_item_04.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_04.jpeg"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 project-item mix branding">
                                      <div class="thumb">
                                            <div class="image">
                                                <a href="img/portfolio_big_item_05.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_05.jpeg"></a>
                                            </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 project-item mix graphic animation">
                                        <div class="thumb">
                                            <div class="image">
                                                <a href="img/portfolio_big_item_06.jpeg" data-lightbox="image-1"><img src="img/portfolio_item_06.jpeg"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </section> -->


<!--     <section id="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div id="owl-testimonials" class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="testimonials-item">
                                <p>“ Quisque ullamcorper odio a nisl lacinia dictum. Vestibulum malesuada ipsum in turpis finibus, ut sagittis erat scelerisque. Curabitur non risus fringilla libero accumsan molestie et quis justo. ”</p>
                                <h4>George Rich</h4>
                                <span>Web Designer</span>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <p>“ Suspendisse magna mauris, convallis vel finibus eget, lobortis dictum neque. Nam tincidunt metus nec eros dignissim consectetur. ”</p>
                                <h4>John Henry</h4>
                                <span>New Manager</span>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <p>“ Aenean semper aliquam est ut maximus. Fusce id diam eget orci lobortis ultricies at ac velit. Curabitur laoreet massa et fringilla sagittis. ”</p>
                                <h4>Danny Cute</h4>
                                <span>CEO Founder</span>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <p>“ Maecenas eu odio pharetra, elementum lorem eget, efficitur erat. Duis eget justo non nisi iaculis vestibulum. Aliquam erat volutpat. ”</p>
                                <h4>Richard Beal</h4>
                                <span>CSS Developer</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 -->
    <div class="tabs-content" id="blog">
        <div class="container">
            <div class="row">
                <div class="wrapper">
                	<center>
                	<table>
                      	  
                          <br><br>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>Id :</b></font></td>
                              <td><b>&emsp;<font size="4px"><%=id%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>Name :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=name%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>DOB :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=date%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>Gender :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=gender%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>Contact No :</font></b></td>
                          	  <td><b>&emsp;<font size="4px"><%=mobile%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" size="4px" color="crimson"><b>Address :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=add%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>City :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=city%></font></b></td>
                          </tr>
                          <tr>
                              <td align="right"><font size="4px" color="crimson"><b>Pincode :</font></b></td>
                              <td><b>&emsp;<font size="4px"><%=pincode%></font></b></td>
                          </tr>
                     </table>
                     </center>
                     <br>

                    <!-- <div class="col-md-4">
                        <div class="section-heading">
                            <h4>Our Posts</h4>
                            <div class="line-dec"></div>
                            <p>This gallery exhibits the works of many artists. Each artist is given a specified space on the online webpage.</p>
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                                <li><a href="#tab1" class="active">Flowers</a></li>
                                <li><a href="#tab2">Oil Painting</a></li>
                                <li><a href="#tab3">Wall Painting</a></li>
                                <li><a href="#tab4">Canvas</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <section id="first-tab-group" class="tabgroup">
                            <div id="tab1">
                                <img src="img/blog_item_01.jpg" alt="">
                                <div class="text-content">
                                    <h4>Nulla eget convallis augue</h4>
                                    <span><a href="#">Digital Marketing</a> / <a href="#">Honey</a> / <a href="#">26 September 2017</a></span>
                                    <p>Donec interdum scelerisque auctor. Nulla id lorem auctor, bibendum lectus elementum, porta felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                                </div>
                            </div>
                            <div id="tab2">
                                <img src="img/blog_item_02.jpg" alt="">
                                <div class="text-content">
                                    <h4>Quisque ultricies maximus</h4>
                                    <span><a href="#">Branding</a> / <a href="#">David</a> / <a href="#">14 September 2017</a></span>
                                    <p>Etiam fringilla posuere pretium. Maecenas tempor pellentesque elit in dapibus. Curabitur viverra urna sem, ut sollicitudin sem congue vel. Donec fringilla augue in justo molestie fermentum quis ac mi.</p>
                                </div>
                            </div>
                            <div id="tab3">
                                <img src="img/blog_item_03.jpg" alt="">
                                <div class="text-content">
                                    <h4>Sed vel elit et lorem</h4>
                                    <span><a href="#">Web Design</a> / <a href="#">William</a> / <a href="#">20 August 2017</a></span>
                                    <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id ipsum porta, dictum sem sed, bibendum quam. Maecenas mattis risus eget orci rhoncus.</p>
                                </div>
                            </div>
                            <div id="tab4">
                                <img src="img/blog_item_04.jpg" alt="">
                                <div class="text-content">
                                    <h4>Vivamus purus neque</h4>
                                    <span><a href="#">E-Commerce</a> / <a href="#">George</a> / <a href="#">14 August 2017</a></span>
                                    <p>Aliquam erat volutpat. Nulla at nunc nec ante rutrum congue id in diam. Nulla at lectus non turpis placerat volutpat lacinia ut mi. Quisque ultricies maximus justo a blandit. Donec sit amet commodo arcu. Sed sit amet iaculis mi, vel fermentum nisi. Morbi dui enim, vestibulum non accumsan ac, tempor non nisl.</p>
                                </div>
                            </div>
                        </section>
                    </div> -->
                </div>
            </div>
        </div>
    </div>

    <!-- <div id="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h4>Contact Us</h4>
                        <div class="line-dec"></div>
                        <p>Nunc posuere non quam at pharetra. Mauris tincidunt purus vel ultrices malesuada. Integer euismod erat ut nulla ultrices, ut auctor eros feugiat.</p>
                        <div class="pop-button">
                            <h4>Send us a message</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="pop">
                        <span>✖</span>
                        <form id="contact" action="#" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                  <fieldset>
                                  	<label><a style="color:white">Email:</a></label>
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required>
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                  	<label><a style="color:white">Password:</a></label>
                                    <input name="email" type="password" class="form-control" id="email" placeholder="Your email..." required>
                                  </fieldset>
                                </div>
                                
                                <div class="col-md-12">
                                  <fieldset>
                                    <button type="submit" id="form-submit" class="btn">Login</button>
                                  </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div> -->

   <!--  <div id="map">
    	How to change your own map point
            1. Go to Google Maps
            2. Click on your location point
            3. Click "Share" and choose "Embed map" tab
            4. Copy only URL and paste it within the src="" field below
       
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7895.485196115994!2d103.85995441789784!3d1.2880401763270322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7fb4e58ad9cd826e!2sSingapore+Flyer!5e0!3m2!1sen!2sth!4v1505825620371" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div> -->
    
    
    
    
    <%
            } 
        }
   
    catch (Exception e) 
    {
		System.out.println(e);
    }
		
    
     } else {
    %>
       <script>
			alert("Session is over");
            window.location = "Login_Template/artist_login.html";
        </script>
        
    <%
        }
    %>  
    
    
    
        <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="logo">
                        <a class="logo-ft scroll-top" href="#"><em><font color="red">Rising</font></em>ART</a>
                        <p>Copyright &copy; 2020 Rising Art 
                       <!-- <br>Design: templatemo</p> -->
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="location">
                        <!-- <h4>Location</h4> -->
                        <ul>
                            <!-- <li>30 Raffles Ave, <br>Singapore 039803</li>
                            <li>1 Republic Blvd, <br>Singapore 038975</li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="contact-info">
                        <h4>More Info</h4>
                        <ul>
                            <li><em>Phone</em>: 9890047969</li>
                            <li><em>Email</em>: risingart@gmail.co</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="connect-us">
                        <h4>Get Social with us</h4>
                        <ul>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-google"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 50;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
   
</body>
</html>