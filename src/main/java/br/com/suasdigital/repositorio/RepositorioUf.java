package br.com.suasdigital.repositorio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.suasdigital.modelo.Uf;
import br.com.suasdigital.util.ConnectionFactory;
import br.com.suasdigital.util.FecharConexao;

public class RepositorioUf {
	
	private List<Uf> ufs = null;
	private Uf uf = null;
	
	public List<Uf> ListaUf() throws SQLException {
		
		Connection con = new ConnectionFactory().getConnection();
		String sql = "SELECT * FROM uf ORDER BY estado";	                                
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = stmp.executeQuery(sql);
		ufs = new ArrayList<Uf>();
		
		try {	
			while(rs.next()) {
				uf = new Uf();
				uf.setId(rs.getInt("id"));
				uf.setCodigo(rs.getInt("codigo"));
				uf.setSigla(rs.getString("sigla"));
				uf.setEstado(rs.getString("estado"));
				ufs.add(uf);
			}
		} catch(SQLException e) {	
			e.printStackTrace();
		} finally {
			FecharConexao.FC(stmp, rs, con);
		}
		
		return ufs;
	}

}
