package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	private static Connection conn;

	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

		return conn;

	}
}
