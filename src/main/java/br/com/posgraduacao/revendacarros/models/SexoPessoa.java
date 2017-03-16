package br.com.posgraduacao.revendacarros.models;

public enum SexoPessoa {
	Masculino("M"), Feminino("F");
	private String valor;

	private SexoPessoa(String valor) {
		this.valor = valor;
	}

	public String toString() {
		return valor;
	}
}