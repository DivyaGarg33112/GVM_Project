package com.bagwantistore.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	public static Connection getConn() throws ClassNotFoundException, SQLException{
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/GVM","sa","");
		return conn;
	}
}
