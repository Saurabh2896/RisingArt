<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Rising Art</title>
	<meta name="keywords" content="Study Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/style.css">
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet">
</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
				<h1>Image</h1>
	</div>
		<div class="container">
			<div class="heading">
			<h4 style="text-align: left;float:left;"><a href="../index_WelcomeArtistHome.jsp"><font color="white"> home</font></a></h4>
			<h4 style="text-align: right;float:right;"><a href="../Registration_Template/index_ArtistAddImg.jsp"><font color="white">add image-></font></a></h4>
				<h2>Insert Image </h2>
				
				<%
					String id =(String) session.getAttribute("aid");
       				if (id != null) {  
				%>
        		<br><br><br><br><br><br><br>
        		<center>
        		<table>
        				<a style="align-content: bottom; color: white;">
                      	  <tr>
                              <td>Image Uploaded Successfully</td>
                          </tr>
                          <%-- <br><br><tr>
                              <td><br><br>&emsp;&emsp;&emsp;&emsp;&nbsp;AR Id is : </font><%=Aid%></td>
                          </tr> --%>
                </table>
                </center>
                </a>
                <br><br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</div>
		<a style="align-content: bottom; color: white;"><br>
		<div class="copyright">
			<p>Copyright &copy; 2020 Rising Art</p> 
		</div>
		</a>
	</div>
	<%
    } else {
    %>
        <script>
			alert("Session is over");
            window.location = "../Login_Template/artist_login.html";
        </script>  
    <%
        }
    %>
</body>
</html>