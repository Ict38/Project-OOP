package com.test.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	public static Connection getJDBCConnection() {
//	public static void main(String[] args) {
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String user = "sa";
			String pass = "sa";
			String url = "jdbc:sqlserver://HC\\SQLEXPRESS:1433;databaseName=ProjectBTL";	
			connection = DriverManager.getConnection(url, user, pass);
			System.out.println("Success!");
			
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}

		return connection;
	}
}
