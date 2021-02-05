package com.InsertImage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	static Connection con=null;
		public static Connection getConnection() {
			try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online_art_gallery","root","");
			}
			catch(Exception e){
				System.out.println(e);
			}
			return con;	
	}
}
