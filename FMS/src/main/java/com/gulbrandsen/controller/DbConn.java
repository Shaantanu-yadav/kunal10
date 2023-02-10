package com.gulbrandsen.controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn {
	private static Connection conn;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "password");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
