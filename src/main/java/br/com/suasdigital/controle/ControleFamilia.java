package br.com.suasdigital.controle;

import br.com.suasdigital.modelo.Familia;
import br.com.suasdigital.repositorio.RepositorioFamilia;

public class ControleFamilia {
		
	private RepositorioFamilia rfamilia = null;

	// Construtor.
	public ControleFamilia() {
		this.rfamilia = new RepositorioFamilia();
	}
	
	// Controle cadastrar pessoa.
	public long ControleCadastraPessoa(Familia familia) {
		
		long idfamilia = 0;
		
		try {
			idfamilia = rfamilia.CadastrarFamilia(familia);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return idfamilia;
	}
	
	/* Controle pesquisar todas pessoas
	public List<Familia> ControleListaFamilia() {
		List<Familia> pessoas = null;
		try {
    		//pessoas = rfamilia.ListaFamilia();
		} catch(SQLException e) {
			e.printStackTrace();
		}
    	return pessoas;
	}*/
	
	/* Controle pesquisar pessoa por ID
	public Familia ControleBuscaFamiliaPorId(long idfamilia) {
		Familia familia = null;
    	try {
    		//pessoa = rfamilia.BuscaPessoaPorId(idfamilia);
		} catch(SQLException e) {
			e.printStackTrace();
		}
    	return familia;
    }*/
	
	/* Controle edita pessoa.
	public void ControleEditaFamilia(Familia familia) {
		try {
			//rfamilia.EditaFamilia(familia);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}*/
}

