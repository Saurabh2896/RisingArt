package com.InsertImage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.InsertImage.DbConnection;

import java.sql.PreparedStatement;

@WebServlet("/InsertImage")
public class InsertImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("t1");
		String artname = request.getParameter("t2");
        String image = request.getParameter("t3");
        String desc = request.getParameter("t4");
        String price = request.getParameter("t5");
        String size = request.getParameter("t6");
        
        FileInputStream fis=new FileInputStream(new File(image));
        
        Connection con=DbConnection.getConnection();
        try {
        	PreparedStatement ps=con.prepareStatement("insert into artist_image(artist_id,art_name,image,price,descr,size) values (?,?,?,?,?,?)");
        	ps.setString(1, id);
        	ps.setString(2, artname);
		    ps.setBinaryStream(3,fis);
		    ps.setString(4, price);
		    ps.setString(5, desc);
		    ps.setString(6, size);
		    		    
        	int n=ps.executeUpdate();
            if(n>0)
            {
            	response.getWriter().println("Successfully inserted");
            	response.sendRedirect("././Registration_Template/index_WelcomeArtistInsertImg.jsp");
            }
            else
            {
            	response.getWriter().println("not inserted");
            }
        }catch(Exception e)
        {
        	System.out.println(e);
        }
	}

}
