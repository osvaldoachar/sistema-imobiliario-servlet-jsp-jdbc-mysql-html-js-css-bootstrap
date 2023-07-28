package model;

public class ComentarioModel {
	
	private int idcomentario;
	private String NomeUsuario;
	private String Ocupacao;
	private String comentario;
	
	
	
	public ComentarioModel() {
		super();
	}
	public ComentarioModel(String nomeUsuario, String ocupacao, String comentario) {
		super();
		NomeUsuario = nomeUsuario;
		Ocupacao = ocupacao;
		this.comentario = comentario;
	}
	public ComentarioModel(int idcomentario, String nomeUsuario, String ocupacao, String comentario) {
		super();
		this.idcomentario = idcomentario;
		NomeUsuario = nomeUsuario;
		Ocupacao = ocupacao;
		this.comentario = comentario;
	}
	public int getIdcomentario() {
		return idcomentario;
	}
	public void setIdcomentario(int idcomentario) {
		this.idcomentario = idcomentario;
	}
	public String getNomeUsuario() {
		return NomeUsuario;
	}
	public void setNomeUsuario(String nomeUsuario) {
		NomeUsuario = nomeUsuario;
	}
	public String getOcupacao() {
		return Ocupacao;
	}
	public void setOcupacao(String ocupacao) {
		Ocupacao = ocupacao;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	
}
