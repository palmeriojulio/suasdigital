package br.com.suasdigital.repositorio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.suasdigital.modelo.Pessoa;
import br.com.suasdigital.util.ConnectionFactory;
import br.com.suasdigital.util.FecharConexao;

public class RepositorioPessoa {

	// Cadastrar Pessoa
	public long CadastrarPessoa(Pessoa pessoa) throws SQLException {

		Connection con = new ConnectionFactory().getConnection();
		String sql = "INSERT INTO pessoa(idpessoa, nome, rg, cpf, nis, datanascimento, naturalidade, ufnascimento, sexo, foto,"
				+ "estadocivil, escolaridade, profissao, condicaoocupacao, zonamoradia, logradouro, numero, complemento, bairro, cep, "
				+ "cidade, ufcidade, email, telefonecelular) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		// Retorna o id que vai ser salvo no banco.
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		long idpessoa = 0;

		try {
			stmp.setLong(1, pessoa.getIdpessoa());
			stmp.setString(2, pessoa.getNome());
			stmp.setString(3, pessoa.getRg());
			stmp.setString(4, pessoa.getCpf());
			stmp.setString(5, pessoa.getNis());
			stmp.setString(6, pessoa.getDatanascimento());
			stmp.setString(7, pessoa.getNaturalidade());
			stmp.setString(8, pessoa.getUfnascimento());
			stmp.setString(9, pessoa.getSexo());
			stmp.setString(10, pessoa.getFoto());
			stmp.setString(11, pessoa.getEstadocivil());
			stmp.setString(12, pessoa.getEscolaridade());
			stmp.setString(13, pessoa.getProfissao());
			stmp.setString(14, pessoa.getCondicaoocupacao());
			stmp.setString(15, pessoa.getZonamoradia());
			stmp.setString(16, pessoa.getLogradouro());
			stmp.setString(17, pessoa.getNumero());
			stmp.setString(18, pessoa.getComplemento());
			stmp.setString(19, pessoa.getBairro());
			stmp.setString(20, pessoa.getCep());
			stmp.setString(21, pessoa.getCidade());
			stmp.setString(22, pessoa.getUfcidade());
			stmp.setString(23, pessoa.getEmail());
			stmp.setString(24, pessoa.getTelefonecelular());
			stmp.executeUpdate();

			ResultSet rs = stmp.getGeneratedKeys();

			if (rs.next()) {
				idpessoa = rs.getLong(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return idpessoa;
	}

	// Lista todas as pessoas cadastradas.
	public List<Pessoa> ListaPessoa() throws SQLException {		
		
		Connection con = new ConnectionFactory().getConnection();
		String sql = "SELECT * FROM pessoa ORDER BY idpessoa";
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = stmp.executeQuery(sql);
		List<Pessoa> pessoas = new ArrayList<Pessoa>();
		Pessoa pessoa = null;

		try {
			while (rs.next()) {
				pessoa = new Pessoa();				
				pessoa.setIdpessoa(rs.getLong("idpessoa"));
				pessoa.setNome(rs.getString("nome"));
				pessoa.setRg(rs.getString("rg"));
				pessoa.setCpf(rs.getString("cpf"));
				pessoa.setNis(rs.getString("nis"));
				pessoa.setDatanascimento(rs.getString("datanascimento"));
				pessoa.setNaturalidade(rs.getString("naturalidade"));
				pessoa.setUfnascimento(rs.getString("ufnascimento"));
				pessoa.setSexo(rs.getString("sexo"));
				pessoa.setFoto(rs.getString("foto"));
				pessoa.setEstadocivil(rs.getString("estadocivil"));
				pessoa.setEscolaridade(rs.getString("escolaridade"));
				pessoa.setProfissao(rs.getString("profissao"));
				pessoa.setCondicaoocupacao(rs.getString("condicaoocupacao"));
				pessoa.setZonamoradia(rs.getString("zonamoradia"));
				pessoa.setLogradouro(rs.getString("logradouro"));
				pessoa.setNumero(rs.getString("numero"));
				pessoa.setComplemento(rs.getString("complemento"));
				pessoa.setBairro(rs.getString("bairro"));
				pessoa.setCidade(rs.getString("cidade"));
				pessoa.setUfcidade(rs.getString("ufcidade"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setTelefonecelular(rs.getString("telefonecelular"));
				pessoas.add(pessoa);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			FecharConexao.FC(stmp, rs, con);
		}
		
		return pessoas;
	}
	
	// Busca pessoa por id.
	public Pessoa BuscaPessoaPorId(long idpessoa) throws SQLException {

		Connection con = new ConnectionFactory().getConnection();
		String sql = "SELECT * FROM pessoa WHERE idpessoa = " + idpessoa + "";
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = stmp.executeQuery(sql);
		Pessoa pessoa = null;

		try {
			while (rs.next()) {
				pessoa = new Pessoa();
				pessoa.setIdpessoa(rs.getLong("idpessoa"));
				pessoa.setNome(rs.getString("nome"));
				pessoa.setRg(rs.getString("rg"));
				pessoa.setCpf(rs.getString("cpf"));
				pessoa.setNis(rs.getString("nis"));
				pessoa.setDatanascimento(rs.getString("datanascimento"));
				pessoa.setNaturalidade(rs.getString("naturalidade"));
				pessoa.setUfnascimento(rs.getString("ufnascimento"));
				pessoa.setSexo(rs.getString("sexo"));
				pessoa.setFoto(rs.getString("foto"));
				pessoa.setEstadocivil(rs.getString("estadocivil"));
				pessoa.setEscolaridade(rs.getString("escolaridade"));
				pessoa.setProfissao(rs.getString("profissao"));
				pessoa.setCondicaoocupacao(rs.getString("condicaoocupacao"));
				pessoa.setZonamoradia(rs.getString("zonamoradia"));
				pessoa.setLogradouro(rs.getString("logradouro"));
				pessoa.setNumero(rs.getString("numero"));
				pessoa.setComplemento(rs.getString("complemento"));
				pessoa.setBairro(rs.getString("bairro"));
				pessoa.setCidade(rs.getString("cidade"));
				pessoa.setUfcidade(rs.getString("ufcidade"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setTelefonecelular(rs.getString("telefonecelular"));
				break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			FecharConexao.FC(stmp, rs, con);
		}

		return pessoa;
	}
			

}
