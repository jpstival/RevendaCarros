package br.com.posgraduacao.revendacarros.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@SuppressWarnings("unused")
@Entity
public class Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(nullable = false, length = 50)
	private String nome;
	@Column(nullable = false, length = 11)
	private String cpf;
	@Enumerated(EnumType.ORDINAL)
	@Column(length = 1)
	private SexoPessoa sexo;
	private String email;

	@OneToMany(mappedBy = "pessoa", fetch = FetchType.LAZY)
	private List<Endereco> enderecos;
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return this.cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public SexoPessoa getSexo() {
		return sexo;
	}

	public void setSexo(SexoPessoa sexo) {
		this.sexo = sexo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Endereco> getTelefones() {
		return enderecos;
	}

}
