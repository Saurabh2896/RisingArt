<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rising Art</title>
    </head>
    <%
		String id =(String) session.getAttribute("aid");
       	if (id != null) {  
		
		%>
    <body>
          <%
            int id1=0;
          
            String name = request.getParameter("t1");
            String password = request.getParameter("t2");
            String email = request.getParameter("t3");
            String mobile = request.getParameter("t4");
            String add = request.getParameter("t5");
            String city = request.getParameter("t6");
            
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

               	status = st.executeUpdate("INSERT INTO admin (name,password,email,phone,address,city) VALUES ('" + name + "','" + password + "','" + email + "','" +  mobile + "','" + add + "','" + city + "')");

                if (status > 0) 
                {
                   /* rs=st.executeQuery("select * from artist");
                   while(rs.next())
                   {
                       if(rs.getString("email").equals(email) && rs.getString("phone").equals(mobile) && rs.getString("a_date").equals(date) && rs.getString("password").equals(password))
                       {
                       		id=rs.getInt("artist_id");
                       }
                   }   */
                     
         %>   
              
     			<script>
            		window.location = "../../index_WelcomeAdminHome.jsp";
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
        <%
       
     } else {
    %>
       <script>
			alert("Session is over");
            window.location = "../../Login_Template/admin_login.html";
        </script>
        
    <%
        }
    %>  
    </body>
</html>
