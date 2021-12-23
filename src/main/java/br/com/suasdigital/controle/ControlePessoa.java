package br.com.suasdigital.controle;

import br.com.suasdigital.modelo.Pessoa;
import br.com.suasdigital.repositorio.RepositorioPessoa;

public class ControlePessoa {
	
	private RepositorioPessoa rpessoa = null;

	//Construtor.
	public ControlePessoa( ) {
		this.rpessoa = new RepositorioPessoa();
	}
	
	//Controle cadastra pessoa.
	public long ControleCadastrarPessoa(Pessoa pessoa) {
		
		long idpessoa = 0;
		
		try {
			idpessoa = rpessoa.CadastrarPessoa(pessoa);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return idpessoa;
	}
}
