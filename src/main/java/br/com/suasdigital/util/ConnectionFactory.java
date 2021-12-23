package br.com.suasdigital.util;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionFactory {
	
    public Connection getConnection() {
    	
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/suasdigital", "root", "");
		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
                
    }		

}
