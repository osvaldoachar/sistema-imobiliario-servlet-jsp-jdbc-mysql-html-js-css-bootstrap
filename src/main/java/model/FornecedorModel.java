package model;

public class FornecedorModel {

	private int codigo;
	private String nome;
	private String apelido;
	private String genero;
	private String endereco;
	private String dataNascimento;
	private String nacionalidade;
	private String email;
	private String telefone;
	private String imagem;
	private String senha;
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public FornecedorModel(String nome, String apelido, String genero, String endereco, String dataNascimento,
			String nacionalidade, String email, String telefone, String imagem, String senha) {
		this.nome = nome;
		this.apelido = apelido;
		this.genero = genero;
		this.endereco = endereco;
		this.dataNascimento = dataNascimento;
		this.nacionalidade = nacionalidade;
		this.email = email;
		this.telefone = telefone;
		this.imagem = imagem;
		this.senha = senha;
	}

	public FornecedorModel() {
		this.codigo = codigo;
		this.nome = nome;
		this.apelido = apelido;
		this.genero = genero;
		this.endereco = endereco;
		this.dataNascimento = dataNascimento;
		this.nacionalidade = nacionalidade;
		this.email = email;
		this.telefone = telefone;
	    this.imagem = imagem;
	    this.senha = senha;
	}

	/*public FornecedorModel() {
		throw new UnsupportedOperationException("Not supported yet."); // Generated from
																		// nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
	}*/

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setApelido(String apelido) {
		this.apelido = apelido;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	  public void setImagem(String imagem) { this.imagem = imagem; }
	
	public int getCodigo() {
		return codigo;
	}

	public String getNome() {
		return nome;
	}

	public String getApelido() {
		return apelido;
	}

	public String getGenero() {
		return genero;
	}

	public String getEndereco() {
		return endereco;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public String getEmail() {
		return email;
	}

	public String getTelefone() {
		return telefone;
	}

	
	 public String getImagem() { return imagem; }
	

}
