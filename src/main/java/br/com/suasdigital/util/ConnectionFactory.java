package br.com.suasdigital.util;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionFactory {
	
    public Connection getConnection() {
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/suasdigital", "debian-sys-maint", "X4fKtGENsmA2Ulvr");
    		//return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/suasdigital", "suasdigital", "Suasd1g1t@l");
		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
                
    }		

}
