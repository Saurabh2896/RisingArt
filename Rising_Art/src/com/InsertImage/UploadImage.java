package com.InsertImage;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class UploadImage
 */
@WebServlet("/UploadImage")
public class UploadImage extends HttpServlet {
	private final String UPLOAD_DIRECTORY="C:/Users/Saurabh/git/RisingArt/Rising_Art/WebContent/ArtImages";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;
            try {
                items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {
                } else {
                    try {
                    String itemName = item.getName();
                    File savedFile = new File("C:\\Users\\Saurabh\\git\\RisingArt\\Rising_Art\\WebContent\\ArtImages"+itemName);
                    item.write(savedFile);  
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
	
        }
        }
}
