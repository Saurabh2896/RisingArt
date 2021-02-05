<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rising Art</title>
</head>
<body>

          <%
            Connection con;
            Statement st;
            ResultSet rs;
            int Sid=0;
            int status = 0;
            int Id=0;
//            String Id = (String)request.getParameter("id");
            String email =(String)request.getParameter("email");
            String Pass = (String)request.getParameter("pass");

//            out.println(Id);
//            out.println(Pass);

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                rs = st.executeQuery("select * from admin");

                while (rs.next()) {
                  /*   out.println(rs.getString("id"));
                    out.println("<br>");
                    out.println(rs.getString("name"));
                    out.println("<br>");
                    out.println(rs.getString("email")); */
//                    out.println(rs.getString("password"));
                    if (rs.getString("email").equals(email) && rs.getString("password").equals(Pass)) 
                    {
                    	session.setAttribute("adid",rs.getString("id"));
                    	session.setAttribute("name",rs.getString("name"));
                       	session.setAttribute("email",rs.getString("email"));
                        session.setAttribute("mobile",rs.getString("phone"));
                        session.setAttribute("add",rs.getString("address"));
                        session.setAttribute("city",rs.getString("city"));
                        session.setAttribute("password",rs.getString("password"));
                   
                        status = 1;

                        break;
					} 
                }
            } 
            catch (Exception e) 
            {
				System.out.println(e);
            }
            
         
            if (status == 1) 
            {
                
                
        %>
        		<script type="text/javascript">
       			alert("Login Successfull");
        		</script>
            <!--if (status == 1) {-->
     <script>

            window.location = "../../index_WelcomeAdminHome.jsp";
        </script>
        <%
        } else {
//            out.println("Login Failed");
        %>
        <script type="text/javascript">
       			alert("user id or password incorrect");
        		
        
            window.location ="../../Login_Template/admin_login.html";
        </script> 
        <%
            }

        %>
</body>
</html>