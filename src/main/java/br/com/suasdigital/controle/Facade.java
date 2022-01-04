package br.com.suasdigital.controle;

public class Facade {
	
	private static Facade instance;
	private ControlePessoa cpessoa;	
	
	
	public Facade() {
		this.cpessoa = new ControlePessoa();
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
	
}
