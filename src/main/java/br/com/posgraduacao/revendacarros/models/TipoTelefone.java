package br.com.posgraduacao.revendacarros.models;

public enum TipoTelefone {
	Comercial("COM"), Residencial("RES"), Celular("CEL");
	private String tipoFone;

	private TipoTelefone(String tipoFone) {
		this.tipoFone = tipoFone;
	}

	public String getTipoFone() {
		return tipoFone;
	}

	public void setTipoFone(String tipoFone) {
		this.tipoFone = tipoFone;
	}
	
}

