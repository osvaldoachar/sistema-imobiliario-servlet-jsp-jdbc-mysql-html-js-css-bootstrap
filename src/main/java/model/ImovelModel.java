package model;

public class ImovelModel {
	
	private int idimovel;
	private String nome;
	private String nomeAbreviado;
	private String endereco;
	private String email;
	private String telefone;
	private String fChave;
	private String cChave;
	
	
	
	
	
	public ImovelModel(int idimovel, String nome, String nomeAbreviado, String endereco, String email, String telefone,
			String fChave, String cChave) {
		super();
		this.idimovel = idimovel;
		this.nome = nome;
		this.nomeAbreviado = nomeAbreviado;
		this.endereco = endereco;
		this.email = email;
		this.telefone = telefone;
		this.fChave = fChave;
		this.cChave = cChave;
	}

	public ImovelModel() {
		super();
	}

	public ImovelModel(String nome, String nomeAbreviado, String endereco, String email, String telefone, String fChave,
			String cChave) {
		super();
		this.nome = nome;
		this.nomeAbreviado = nomeAbreviado;
		this.endereco = endereco;
		this.email = email;
		this.telefone = telefone;
		this.fChave = fChave;
		this.cChave = cChave;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public int getIdimovel() {
		return idimovel;
	}
	public void setIdimovel(int idimovel) {
		this.idimovel = idimovel;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getNomeAbreviado() {
		return nomeAbreviado;
	}
	public void setNomeAbreviado(String nomeAbreviado) {
		this.nomeAbreviado = nomeAbreviado;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getfChave() {
		return fChave;
	}
	public void setfChave(String fChave) {
		this.fChave = fChave;
	}
	public String getcChave() {
		return cChave;
	}
	public void setcChave(String cChave) {
		this.cChave = cChave;
	}
	
	
	
	
}
