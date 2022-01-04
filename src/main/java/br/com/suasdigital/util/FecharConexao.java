package br.com.suasdigital.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FecharConexao {
	
	public static void FC(PreparedStatement stmp,ResultSet rs, Connection con) {
		
		try {
			stmp.close();
			rs.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Erro ao tentar fechar a conexão: "+e);
			e.printStackTrace();
		}	
	}
	
    public static void FC(PreparedStatement stmp,Connection con) {
		
		try {
			stmp.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Erro ao tentar fechar a conexão: "+e);
			e.printStackTrace();
		}	
	}
}
