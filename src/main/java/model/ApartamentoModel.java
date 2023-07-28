package model;

import java.sql.Blob;

import jakarta.servlet.http.Part;



public class ApartamentoModel {

	private int idap;
	private String quartos;
	private String salas;
	private String banheiros;
	private String tipoAp;
	private String estado;
	private String imovelC;
	private String cidadeC;
	private String preco;
	private String imagem;
	private String fornecedor;
	
	
	
	
	public String getFornecedor() {
		return fornecedor;
	}
	public void setFornecedor(String fornecedor) {
		this.fornecedor = fornecedor;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	public ApartamentoModel(String quartos, String salas, String banheiros, String tipoAp, String estado,
			String imovelC, String cidadeC, String preco, String imagem, String fornecedor) {
		super();
		this.quartos = quartos;
		this.salas = salas;
		this.banheiros = banheiros;
		this.tipoAp = tipoAp;
		this.estado = estado;
		this.imovelC = imovelC;
		this.cidadeC = cidadeC;
		this.preco = preco;
		this.imagem = imagem;
		this.fornecedor = fornecedor;
	}
	public ApartamentoModel() {
		super();
	}
	public ApartamentoModel(int idap, String quartos, String salas, String banheiros, String tipoAp, String estado,
			String imovelC, String cidadeC, String preco, String imagem) {
		super();
		this.idap = idap;
		this.quartos = quartos;
		this.salas = salas;
		this.banheiros = banheiros;
		this.tipoAp = tipoAp;
		this.estado = estado;
		this.imovelC = imovelC;
		this.cidadeC = cidadeC;
		this.preco = preco;
		this.imagem = imagem;
	
	}
	public int getIdap() {
		return idap;
	}
	public void setIdap(int idap) {
		this.idap = idap;
	}
	public String getQuartos() {
		return quartos;
	}
	public void setQuartos(String quartos) {
		this.quartos = quartos;
	}
	public String getSalas() {
		return salas;
	}
	public void setSalas(String salas) {
		this.salas = salas;
	}
	public String getBanheiros() {
		return banheiros;
	}
	public void setBanheiros(String banheiros) {
		this.banheiros = banheiros;
	}
	public String getTipoAp() {
		return tipoAp;
	}
	public void setTipoAp(String tipoAp) {
		this.tipoAp = tipoAp;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getImovelC() {
		return imovelC;
	}
	public void setImovelC(String imovelC) {
		this.imovelC = imovelC;
	}
	public String getCidadeC() {
		return cidadeC;
	}
	public void setCidadeC(String cidadeC) {
		this.cidadeC = cidadeC;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	
	
	
}
