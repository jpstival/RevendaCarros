package br.com.posgraduacao.revendacarros.models;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class Endereco  {

	@Column(name = "cep", length = 9)
	private String cep;

	@Column(name = "rua", length = 45)
	private String rua;

	@Column(name = "bairro", length = 45)
	private String bairro;
	
	@Column(name = "cidade", length = 40)
	private String cidade;
	
	@Column(name = "estado", length = 30)
	private String estado;
	
	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
}