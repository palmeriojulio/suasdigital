package br.com.suasdigital.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private long idpessoa;
	@Column(length = 100)
	private String nome;
	@Column(length=20)
	private String rg;
	@Column(length=14)
	private String cpf;
	@Column(length=11)
	private String nis;
	@Column(length=10, columnDefinition="DATE")
	private String datanascimento;
	@Column(length=50)
	private String naturalidade;
	@Column(length=2)
	private String ufnascimento;
	@Column(length=1)
	private String sexo;
	@Column(length=60)
	private String foto;
	@Column(length=30)
	private String estadocivil;
	@Column(length=30)
	private String escolaridade;
	@Column(length=30)
	private String profissao;
	@Column(length=30)
	private String condicaoocupacao;
	@Column(length=20)
	private String zonamoradia;
	@Column(length=70)
	private String logradouro;
	@Column(length=8)
	private String numero;
	@Column(length=40)
	private String complemento;
	@Column(length=40)
	private String bairro;
	@Column(length=9)
	private String cep;
	@Column(length=30)
	private String cidade;
	@Column(length=2)
	private String ufcidade;
	@Column(length=50)
	private String email;
	@Column(length=13)
	private String telefonecelular;
	
	
	public Pessoa() {}
	

	public Pessoa(long idpessoa, String nome, String rg, String cpf, String nis, String datanascimento,
			String naturalidade, String ufnascimento, String sexo, String foto, String estadocivil, String escolaridade, 
			String profissao, String condicaoocupacao, String zonamoradia, String logradouro, String numero, String complemento,
			String bairro, String cep, String cidade, String ufcidade, String email, String telefonecelular) {
		super();
		this.idpessoa = idpessoa;
		this.nome = nome;
		this.rg = rg;
		this.cpf = cpf;
		this.nis = nis;
		this.datanascimento = datanascimento;
		this.naturalidade = naturalidade;
		this.ufnascimento = ufnascimento;
		this.sexo = sexo;
		this.foto = foto;
		this.estadocivil = estadocivil;
		this.profissao = profissao;
		this.condicaoocupacao = condicaoocupacao;
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


	public String getNis() {
		return nis;
	}


	public void setNis(String nis) {
		this.nis = nis;
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
	

	public String getEscolaridade() {
		return escolaridade;
	}


	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}


	public String getProfissao() {
		return profissao;
	}


	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}


	public String getCondicaoocupacao() {
		return condicaoocupacao;
	}


	public void setCondicaoocupacao(String condicaoocupacao) {
		this.condicaoocupacao = condicaoocupacao;
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
	
}
