package br.com.suasdigital.controle;

import java.sql.SQLException;
import java.util.List;

import br.com.suasdigital.modelo.Pessoa;
import br.com.suasdigital.repositorio.RepositorioPessoa;

public class ControlePessoa {
	
	private RepositorioPessoa rpessoa = null;

	// Construtor.
	public ControlePessoa( ) {
		this.rpessoa = new RepositorioPessoa();
	}
	
	// Controle cadastrar pessoa.
	public long ControleCadastraPessoa(Pessoa pessoa) {
		
		long idpessoa = 0;
		
		try {
			idpessoa = rpessoa.CadastrarPessoa(pessoa);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return idpessoa;
	}
	
	// Controle pesquisar todas pessoas
	public List<Pessoa> ControleListaPessoa() {
		List<Pessoa> pessoas = null;
		try {
    		pessoas = rpessoa.ListaPessoa();
		} catch(SQLException e) {
			e.printStackTrace();
		}
    	return pessoas;
	}
	
	// Controle pesquisar pessoa por ID
	public Pessoa ControleBuscaPessoaPorId(long idpessoa) {
    	Pessoa pessoa = null;
    	try {
    		pessoa = rpessoa.BuscaPessoaPorId(idpessoa);
		} catch(SQLException e) {
			e.printStackTrace();
		}
    	return pessoa;
    }
	
	// Controle edita pessoa.
	public void ControleEditaPessoa(Pessoa pessoa) {
		try {
			rpessoa.EditaPessoa(pessoa);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
