<%@page import="java.sql.*"%>
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
	<link rel="stylesheet" href="css/Dp.css">
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet">
</head>
		<%
			String id =(String) session.getAttribute("aid");
       		if (id != null) {  
		%>
<body>
	<div class="w3ls-banner">
	<div class="heading">
				<h1>Registration</h1>
	</div>
		<div class="container">
			<div class="heading">
			<h3 style="text-align: left;float:left;"><a href="../index_WelcomeArtistHome.jsp"><font color="white"> back</font></a></h3>
			<!-- <h3 style="text-align: right;float:right;"><a href="../Login_Template/artist_login.html"><font color="white">login</font></a></h3> -->
				<br>
				<!-- <a alalign="right"><div class="dropdown">
  						<button class="dropbtn">&emsp;&emsp;USER</button>
  						<div class="dropdown-content">
    						<a href="artist_login.html">Artist</a>
    						<a href="customer_login.html">Customer</a>
  						</div>
					</div></a> -->
				<p><font color="orange">(Please fill out the SignUp form carefully)</font></p>
			</div>
			<div class="agile-form">
					
				<form action="../InsertImage" method="post">
					              
           <%
           Connection con;
           Statement st;
           ResultSet rs;
           try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                rs = st.executeQuery("select artist_id,aname,email from artist where artist_id='"+id+"'");

            while(rs.next()){
            	
            %>
					<ul class="field-list">
						<li>
							<label class="form-label"> 
								AR ID 
								<!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="hidden" name="t1" id="t1" value="<%=rs.getString(1) %>" placeholder="" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold; width: 379px; height: 25px" required ><%=rs.getString(1) %>
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Name 
								<!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<%=rs.getString(2) %>
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Art Name 
								<!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="text" name="t2" id="t2" placeholder="" multiple="multiple" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Select Image 
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="file" name="t3" id="t3" placeholder="" multiple="multiple" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Add Description
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<textarea name="t4" id="t4" rows="3" placeholder="" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required></textarea>
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Price
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="text" name="t5" id="t5" placeholder="" multiple="multiple" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						<li>
							<label class="form-label"> 
								Size
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="text" name="t6" id="t6" placeholder="" multiple="multiple" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						
					<input type="submit" value="Add Image">
				</form>	
			</div>
		</div><br>
		<div class="copyright">
		<p>Copyright &copy; 2020 Rising Art</p> 
	</div>
	</div>
	 <%
            }
            con.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
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