package br.com.suasdigital.repositorio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.com.suasdigital.modelo.Pessoa;
import br.com.suasdigital.util.ConnectionFactory;

public class RepositorioPessoa {
	
	// Cadastrar Pessoa
	public long CadastrarPessoa(Pessoa pessoa) throws SQLException{
		
		Connection con = new ConnectionFactory().getConnection();
		String sql = "INSERT INTO pessoa(idpessoa, escolaridade, nome, rg, cpf, datanascimento, naturalidade, ufnascimento, sexo, foto, estadocivil"
				+ "profissao, zonamoradia, logradouro, numero, complemento)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		// Retorna o id que vai ser salvo no banco.
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	    long idpessoa = 0;
	    
		try {
			stmp.setLong(1, pessoa.getIdpessoa());
			stmp.setString(2, pessoa.getEscolaridade());
			stmp.setString(3, pessoa.getNome());
			stmp.setString(4, pessoa.getRg());
			stmp.setString(5, pessoa.getCpf());
			stmp.setString(6, pessoa.getDatanascimento());
			stmp.setString(7, pessoa.getNaturalidade());
			stmp.setString(8, pessoa.getUfnascimento());
			stmp.setString(9, pessoa.getSexo());
			stmp.setString(10, pessoa.getFoto());
			stmp.setString(11, pessoa.getEstadocivil());
			stmp.setString(12, pessoa.getProfissao());
			stmp.setString(13, pessoa.getZonamoradia());
			stmp.setString(14, pessoa.getLogradouro());
			stmp.setString(15, pessoa.getNumero());
			stmp.setString(16, pessoa.getComplemento());
			
			stmp.executeUpdate();
			
			ResultSet rs = stmp.getGeneratedKeys();
			
			if(rs.next()){
				idpessoa = rs.getLong(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return idpessoa;
	}

}
