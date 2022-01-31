package br.com.suasdigital.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "familia")
public class Familia implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue (strategy= GenerationType.IDENTITY)
	private long idfamilia;		
	private long idUsuarioReferencia;
	@Column(length=40)
	private String origemFamiliar;
	@Column(length=30)
	private String crasFamila;
	@Column(length=300)
	private String obs;
	
	public Familia() {
		super();
	}

	public Familia(long idfamilia, long idUsuarioReferencia, String origemFamiliar, String crasFamila, String obs) {
		super();
		this.idfamilia = idfamilia;
		this.idUsuarioReferencia = idUsuarioReferencia;
		this.origemFamiliar = origemFamiliar;
		this.crasFamila = crasFamila;
		this.obs = obs;
	}

	public long getIdfamilia() {
		return idfamilia;
	}

	public void setIdfamilia(long idfamilia) {
		this.idfamilia = idfamilia;
	}

	public long getIdUsuarioReferencia() {
		return idUsuarioReferencia;
	}

	public void setIdUsuarioReferencia(long idUsuarioReferencia) {
		this.idUsuarioReferencia = idUsuarioReferencia;
	}

	public String getOrigemFamiliar() {
		return origemFamiliar;
	}

	public void setOrigemFamiliar(String origemFamiliar) {
		this.origemFamiliar = origemFamiliar;
	}

	public String getCrasFamila() {
		return crasFamila;
	}

	public void setCrasFamila(String crasFamila) {
		this.crasFamila = crasFamila;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}	
}
