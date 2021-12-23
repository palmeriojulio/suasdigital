package br.com.suasdigital.modelo;

import java.io.Serializable;

public class Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private long idpessoa;
	private int escolaridade;
	private String nome;
	private String rg;
	private String cpf;
	private String datanascimento;
	private String naturalidade;
	private String ufnascimento;
	private String sexo;
	private String foto;
	private String estadocivil;
	private String profissao;
	private String zonamoradia;
	private String logradouro;
	private String numero;
	private String complemento;	
	
	public Pessoa() {}

	public Pessoa(long idpessoa, int escolaridade, String nome, String rg, String cpf, String datanascimento,
			String naturalidade, String ufnascimento, String sexo, String foto, String estadocivil, String profissao,
			String zonamoradia, String logradouro, String numero, String complemento, String bairro, String cep,
			String cidade, String ufcidade, String email, String telefonecelular) {
		super();
		this.idpessoa = idpessoa;
		this.escolaridade = escolaridade;
		this.nome = nome;
		this.rg = rg;
		this.cpf = cpf;
		this.datanascimento = datanascimento;
		this.naturalidade = naturalidade;
		this.ufnascimento = ufnascimento;
		this.sexo = sexo;
		this.foto = foto;
		this.estadocivil = estadocivil;
		this.profissao = profissao;
		this.zonamoradia = zonamoradia;
		this.logradouro = logradouro;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
		this.cep = cep;
		this.cidade = cidade;
		this.ufcidade = ufcidade;
		this.email = email;
		this.telefonecelular = telefonecelular;
	}
	
	public long getIdpessoa() {
		return idpessoa;
	}
	public void setIdpessoa(long idpessoa) {
		this.idpessoa = idpessoa;
	}
	public int getEscolaridade() {
		return escolaridade;
	}
	public void setEscolaridade(int escolaridade) {
		this.escolaridade = escolaridade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getDatanascimento() {
		return datanascimento;
	}
	public void setDatanascimento(String datanascimento) {
		this.datanascimento = datanascimento;
	}
	public String getNaturalidade() {
		return naturalidade;
	}
	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}
	public String getUfnascimento() {
		return ufnascimento;
	}
	public void setUfnascimento(String ufnascimento) {
		this.ufnascimento = ufnascimento;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public String getEstadocivil() {
		return estadocivil;
	}
	public void setEstadocivil(String estadocivil) {
		this.estadocivil = estadocivil;
	}
	public String getProfissao() {
		return profissao;
	}
	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}
	public String getZonamoradia() {
		return zonamoradia;
	}
	public void setZonamoradia(String zonamoradia) {
		this.zonamoradia = zonamoradia;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getUfcidade() {
		return ufcidade;
	}
	public void setUfcidade(String ufcidade) {
		this.ufcidade = ufcidade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefonecelular() {
		return telefonecelular;
	}
	public void setTelefonecelular(String telefonecelular) {
		this.telefonecelular = telefonecelular;
	}
	private String bairro;
	private String cep;
	private String cidade;
	private String ufcidade;	
	private String email;
	private String telefonecelular;
	
}
