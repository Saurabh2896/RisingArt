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
			String id =(String) session.getAttribute("adid");
       		if (id != null) {  
		%>
<body>
	<div class="w3ls-banner">
	<div class="heading">
				<h2>List of Artist</h2>
	</div>
		<!-- <div class="container"> -->
			<div class="heading">
			<h3 style="text-align: left;padding-left:80px; float:left;"><a href="../index_WelcomeAdminHome.jsp"><font color="white"> home</font></a></h3>
			<h3 style="text-align: right;padding-right:80px; float:right;"><a href="../Registration_Template/index_AdminListCustomer.jsp"><font color="white">list</font></a></h3>
				<br>
				<!-- <a alalign="right"><div class="dropdown">
  						<button class="dropbtn">&emsp;&emsp;USER</button>
  						<div class="dropdown-content">
    						<a href="artist_login.html">Artist</a>
    						<a href="customer_login.html">Customer</a>
  						</div>
					</div></a> -->
				<!-- <p><font color="orange">(Please fill out the SignUp form carefully)</font></p> -->
			</div>
			<!-- <div class="agile-form"> -->
					
			<%
                Connection con;
                Statement st;
                ResultSet rs;
            %>
        <form action="index_SearchArtistController.jsp" method="post"> 
         <center>
          <table>
         		<br><br><tr>
                          <td><input type="text" id="search" name="search" placeholder="Enter Id or Name" style="-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;font-weight: bold" required=""/></td>
                          <!-- <td colspan="2"><input type="submit"  style="margin-top:2.5%; margin-left:36%;height:25px;width:75px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px; font-weight: bold;font-size: 90%;background-color:crimson;color: white" value="Search" onclick="return Validate()"> </td> -->
                          </tr>
         </table>
         </center>
         </form>
         
        <center>    
            <br>
          <!-- <p align="center"> <font color="gray"><strong><b><i><u>List of Customers</b></i></u></strong></font></h2> -->
           <!--  <div style="overflow:scroll;height:324px;width:100%;overflow:auto"> -->
            <table class="css-serial" cellpadding="4" cellspacing="1" border="2">
            
		
            <thread>             
            <tr bgcolor="crimson">
            
            <th><font color="white"><b>Id</b></th>
            <th><font color="white"><b>Name</b></th>
            <th><font color="white"><b>DOB</b></th>
            <th><font color="white"><b>Gender</b></th>
            <th><font color="white"><b>Email</b></th>
            <th><font color="white"><b>Mobile</b></th>
            <th><font color="white"><b>Address</b></th>
            <th><font color="white"><b>City</b></th>
            <th><font color="white"><b>Pincode</b></th>
            <!-- <th><font color="white"><b>Operatios</b></th> -->            
            </tr>
   		    </thread>  
         
            <%
    
           try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                rs = st.executeQuery("select * from artist");

            while(rs.next()){
            	  
            %>
            <tr bgcolor="#a3ffc0">
            
            <td><b><font color="black"><%=rs.getString("artist_id") %></td>
            <td><b><font color="black"><%=rs.getString("aname") %></b></td>
            <td><b><font color="black"><%=rs.getString("a_date") %></b></td>
            <td><b><font color="black"><%=rs.getString("gender") %></b></td>
            <td><b><font color="black"><%=rs.getString("email") %></b></td>
            <td><b><font color="black"><%=rs.getString("phone") %></b></td>
            <td><b><font color="black"><%=rs.getString("address") %></b></td>
            <td><b><font color="black"><%=rs.getString("city") %></b></td>
            <td><b><font color="black"><%=rs.getString("zipcode") %></b></td>
            <!-- <td><button class="btn btn-primary">Edit</button><button type="button" onclick="deletebook('+customer_id+')"  class="btn btn-primary" style="margin-left:5px;">Delete</button></td> -->
            </tr>
              
            <% 
            }
            con.close();
            } catch (Exception e) {
            e.printStackTrace();
            }} else {
                %>
                   <script>
            			alert("Session is over");
                        window.location = "../Login_Template/admin_login.html";
                    </script>
                    
                <%
                    }
                %>  
            
            </font>
       
         </table>
         </center>
		<!-- </div> -->	
		</div>
		<!-- <div class="copyright">
		<p>Copyright &copy; 2020 Rising Art</p> 
	</div> -->
	</div>
</body>
</html>