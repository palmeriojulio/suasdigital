package br.com.suasdigital.repositorio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.com.suasdigital.modelo.Familia;
import br.com.suasdigital.util.ConnectionFactory;

public class RepositorioFamilia {
		
	// Cadastrar Pessoa
	public long CadastrarFamilia(Familia familia) throws SQLException {

		Connection con = new ConnectionFactory().getConnection();
		String sql = "INSERT INTO familia(idfamilia, idUsuarioReferencia, origemFamiliar, crasFamila, obs) values(?,?,?,?,?)";

		// Retorna o id que vai ser salvo no banco.
		PreparedStatement stmp = (PreparedStatement) con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		long idfamilia = 0;

		try {
			stmp.setLong(1, familia.getIdfamilia());
			stmp.setLong(2, familia.getIdUsuarioReferencia());
			stmp.setString(3, familia.getOrigemFamiliar());
			stmp.setString(4, familia.getCrasFamila());
			stmp.setString(5, familia.getObs());
			stmp.executeUpdate();

			ResultSet rs = stmp.getGeneratedKeys();

			if (rs.next()) {
				idfamilia = rs.getLong(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return idfamilia;
	}
}
