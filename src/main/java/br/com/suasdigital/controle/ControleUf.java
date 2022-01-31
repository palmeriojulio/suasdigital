package br.com.suasdigital.controle;

import java.sql.SQLException;
import java.util.List;

import br.com.suasdigital.modelo.Uf;
import br.com.suasdigital.repositorio.RepositorioUf;

public class ControleUf {
	
	private RepositorioUf ruf = null;
	private List<Uf> ufs = null;
	
	public ControleUf() {
		ruf = new RepositorioUf();
	}	
	
	public List<Uf> ListaUf() {
		try {
			ufs = ruf.ListaUf();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ufs;
	}	
}
