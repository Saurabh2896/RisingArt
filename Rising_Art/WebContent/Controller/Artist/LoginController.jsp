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
            String AId =(String)request.getParameter("aid");
            String Pass = (String)request.getParameter("pass");

//            out.println(Id);
//            out.println(Pass);

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                rs = st.executeQuery("select * from artist a");

                while (rs.next()) {
                  /*   out.println(rs.getString("id"));
                    out.println("<br>");
                    out.println(rs.getString("name"));
                    out.println("<br>");
                    out.println(rs.getString("email")); */
//                    out.println(rs.getString("password"));
                    if (rs.getString("artist_id").equals(AId) && rs.getString("password").equals(Pass)) 
                    {
                        session.setAttribute("name",rs.getString("a.aname"));
                        session.setAttribute("date",rs.getString("a.a_date"));
                        session.setAttribute("gender",rs.getString("a.gender"));
                        session.setAttribute("email",rs.getString("a.email"));
                        session.setAttribute("mobile",rs.getString("a.phone"));
                        session.setAttribute("add",rs.getString("a.address"));
                        session.setAttribute("city",rs.getString("a.city"));
                        session.setAttribute("pincode",rs.getString("a.zipcode"));
                        session.setAttribute("password",rs.getString("a.password"));
                   
                        //session.setAttribute("id",rs.getString("artist_id"));
                        Id=rs.getInt("artist_id");
                                           
                        /* Sid=rs.getString("id");
                          f.attendencestudent(Sid);  */
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
                
//                out.println("<center><table>GOOD MORNING Your Attendence has been registered</table></center>");
                	session.setAttribute("aid", AId);
                
                // out.println("Login Successfullly");
                
        %>
        		<script type="text/javascript">
       			alert("Login Successfull");
        		</script>
            <!--if (status == 1) {-->
     <script>

            window.location = "../../index_WelcomeArtistHome.jsp";
        </script>
        <%
        } else {
//            out.println("Login Failed");
        %>
        <script type="text/javascript">
       			alert("user id or password incorrect");
        		
        
            window.location ="../../Login_Template/artist_login.html";
        </script> 
        <%
            }

        %>
</body>
</html>