<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rising Art</title>
    </head>
    <body>
          <%
            int id=0;
          
            String name = request.getParameter("t1");
            String date = request.getParameter("t2");
            String gender = request.getParameter("t3");
            String password = request.getParameter("t4");
            String email = request.getParameter("t5");
            String mobile = request.getParameter("t6");
            String address = request.getParameter("t7");
            String city = request.getParameter("t8");
            String pincode = request.getParameter("t9");
            
            Connection con;
            Statement st;
            ResultSet rs;
             
			int status=0;

            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                //rs = st.executeQuery("select * from artist");

               	status = st.executeUpdate("INSERT INTO artist (aname,a_date,gender,password,email,phone,address,city,zipcode) VALUES ('" + name + "','" + date + "','" + gender + "','" +  password + "','" + email + "','" + mobile + "','" + address + "','" + city + "'," + pincode + ")");

                if (status > 0) 
                {
                   rs=st.executeQuery("select * from artist");
                   while(rs.next())
                   {
                       if(rs.getString("email").equals(email) && rs.getString("phone").equals(mobile) && rs.getString("password").equals(password))
                       {
                       		id=rs.getInt("artist_id");
                       }
                   }  
                     
         %>   
              
     			<script>
            		window.location = "../../Registration_Template/index_welcomeArtistReg.jsp?id=<%=id%>";
        		</script> 
         
        <%
                }  
				else 
                {
                    out.println("Data Insertion Failed");
                }
			} 
            catch (Exception e) 
            {
				out.println(e);
            }
       
//            session.setAttribute("sid", Id);
//            out.println("Regestered Successfully");
//         	  status=rs.executeQuery("SELECT sid from players where sid = (select max(sid) from players)");
        %>
    </body>
</html>
