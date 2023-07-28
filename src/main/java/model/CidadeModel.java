package model;

public class CidadeModel {
	
	private int idCidade;
	private String Nome;
	private String Populacao;
	private String Provicia;
	
	
	
	public CidadeModel(int idCidade, String nome, String populacao, String provicia) {
		super();
		this.idCidade = idCidade;
		Nome = nome;
		Populacao = populacao;
		Provicia = provicia;
	}
	public CidadeModel() {
		super();
	}
	public CidadeModel(String nome, String populacao, String provicia) {
		super();
		Nome = nome;
		Populacao = populacao;
		Provicia = provicia;
	}
	public int getIdCidade() {
		return idCidade;
	}
	public void setIdCidade(int idCidade) {
		this.idCidade = idCidade;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}
	public String getPopulacao() {
		return Populacao;
	}
	public void setPopulacao(String populacao) {
		Populacao = populacao;
	}
	public String getProvicia() {
		return Provicia;
	}
	public void setProvicia(String provicia) {
		Provicia = provicia;
	}
	
}
