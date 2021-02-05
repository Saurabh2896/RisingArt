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
<body>
		<%
		String id =(String) session.getAttribute("aid");
       	if (id != null) {  
		
		%>

	<div class="w3ls-banner">
	<div class="heading">
				<h1>Edit Information</h1>
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
				<p><font color="orange">(Please fill out the form to Update Information which you wants to update)</font></p>
			</div>
			
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
			
            <div class="agile-form">
			
					
				<form action="../Controller/Artist/ArtistUpdateController.jsp" method="post">
					
					<ul class="field-list">
						<li>
							<label class="form-label"> 
								Full Name 
								<!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="text" name="t1" id="t1" value="<%=name %>" placeholder="" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						
						<li>
							<label class="form-label">
							   Date of Birth
							   <!-- <span class="form-required"> * </span> -->
							</label>
							<!-- <div class="form-input dob"> -->
								<input type="date" name="t2" id="t2" value="<%=date%>" placeholder="" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold; width: 379px; height: 25px" required >
								
							<!-- </div> -->
						</li>
						<li>
							<label class="form-label">
							   Gender
							  <!--  <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<select class="form-dropdown" name="t3" id="t3"  style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required>
									<option selected value="<%=gender%>"><%=gender%></option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									
								</select>
							</div>
						</li>
						<%-- <li> 
							<label class="form-label">
							   Password
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="text" name="t4" id="t4" placeholder="" value="<%=password%>" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold; width: 382px; height: 25px" required >
							</div>
						</li> --%>
			
						<li> 
							<label class="form-label">
							   Email
							   <!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="email" name="t5" id="t5" placeholder="" value="<%=email%>" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						
						<li> 
							<label class="form-label">
							   Phone
							  <!--  <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="text" name="t6" id="t6" placeholder="" value="<%=mobile%>" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						
						<li> 
							<label class="form-label">
							   Address
							   <!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<textarea name="t7" id="t7" rows="3" placeholder="" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required><%=add%></textarea>
							</div>
						</li>
						
						<li> 
							<label class="form-label">
							   City
							   <!-- <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="text" name="t8" id="t8" placeholder="" value="<%=city%>" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
						
						<li> 
							<label class="form-label">
							   Pincode
							  <!--  <span class="form-required"> * </span> -->
							</label>
							<div class="form-input">
								<input type="text" name="t9" id="t9" placeholder="" value="<%=pincode%>" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required >
							</div>
						</li>
					<input type="submit" value="Update Now">
				</form>	
			</div>
		</div>
		<div class="copyright">
		<p>Copyright &copy; 2020 Rising Art</p> 
	</div>
	</div>
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
            window.location = "../Login_Template/artist_login.html";
        </script>
        
    <%
        }
    %>  
</body>
</html>