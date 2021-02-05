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
          Connection con;
          Statement st;
          ResultSet rs;
            int id=0;
          
          String myloc=request.getParameter("myimg");
          try{
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
        		conn=DriverManager.getConnection(url, "", "");
        		File image= new File(myloc);
        		pstmt = conn.prepareStatement("insert into image(image) " + "values(?)");
        		
        		fis=new FileInputStream(image);
        		pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
        		int count = pstmt.executeUpdate();
            
            int status=0;

            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery?user=root & password=");
                st = con.createStatement();
                //rs = st.executeQuery("select * from artist");

               	
         %>   
              
     			<script>
            		window.location = "../../Registration_Template/index_welcomeArtistReg.jsp?id=<%=id%>";
        		</script> 
         
        <%
        	if(count>0)
    		{
    			out.println("insert successfully");
    		}
    		else
    		{
    			out.println("not successfully");
    		}
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
       
//            session.setAttribute("sid", Id);
//            out.println("Regestered Successfully");
//         	  status=rs.executeQuery("SELECT sid from players where sid = (select max(sid) from players)");
        %>
    </body>
</html>
