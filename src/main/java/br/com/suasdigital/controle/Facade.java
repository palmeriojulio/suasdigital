package br.com.suasdigital.controle;

public class Facade {
	
	private static Facade instance;
	private ControlePessoa cpessoa;
	private ControleUf cuf;
	private ControleFamilia cfamilia;
	
	
	public Facade() {
		this.cpessoa = new ControlePessoa();
		this.cuf = new ControleUf();
		this.cfamilia = new ControleFamilia();
	}

	public static Facade getInstance() {
		if (instance == null) {
			instance = new Facade();
		}
		return instance;
	}
	
	public ControlePessoa getControlePessoa() {
		return this.cpessoa;
	}

	public ControleUf getControleUf() {
		return this.cuf;
	}

	public ControleFamilia getControleFamilia() {
		return this.cfamilia;
	}	
	
}
