package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.*;

import java.util.*;

//CRIEI A CLASSE FORNECEDOR DAO, ONDE TERA O METODO CONSTRUTOR DA CLASSE E AS OPERAÇOES DA BASE DE DADOS CRUD
//COMEÇA COM O NOME DA CLASSE E EXTENDE A CLASSE CONEXAO DAO E HERDA SEUS ATRIBUTOS E METODOS
public class FornecedorDAO extends ConexaoDAO {
	//METODO CONTRUTOR DA CLASSE PRICIPAL (FORNECEDOR DAO) E OBRIGATORIO
	public FornecedorDAO() throws Exception {
		super();
	}
	
	//METODO PARA LISTAR OS FORNECEDORES NA BASE DE DADOS, O NOME DO METODO SERA getLista() PARA NO FUTURO SE ACOSTUAR COM AS TAGLIBS DO JSTL
	public ArrayList<FornecedorModel> getLista() throws Exception, SQLException{
	
		
		//VAMOS CRIAR UMA ARRAYLIST DO TIPO FORNECEDOR COM O NOME LISTA
		ArrayList<FornecedorModel> lista = new ArrayList<FornecedorModel>();
		//CRIAR UMA VARIAVEL QUE VAI RECEBER A CONSULTA SQL
		String chamarTodos = "SELECT * from fornecedores";
		//DEPOIS DO COMANDO SQL ABRIMOS A CONEXAO CHAMANDO O METODO DA CLASSE CONEXAO DAO, AO CHAMAR O METODO USAMOS A PALAVRA this.NOME_DO_METODO
		ConexaoDAO conexao = new ConexaoDAO();   
		Connection conn = conexao.ConexaoDAO();
		//COMO A CONSULTA SQL NAO TEM NENHUM PARAMETRO NOS PODEMOS USAR O STATEMENT, SE TIVESSE PARAMETROS USARIAMOS PREPAREDSTATEMENT
		Statement stm = conn.createStatement();
		//PAR RECUPERAR O DADOS QUE ESTAO A VIR DA BASE DE DADOS USAMOS A CLASSE RESULTSET
		ResultSet rs = stm.executeQuery(chamarTodos);
		//CRIAR UM LAÇO DE REPETIÇAO PARA RODAR NO NOSSO OBJECTO RS INSTANCIADO DA CLASSE RESULTSET
		while(rs.next()) {
			//CRIAR UM OBJECTO DA CLASSE FORNECEDOR PARA FAZER O SET DO RESULTADO
			FornecedorModel f = new FornecedorModel();
			//O OBJECTO F VAI RECEBER O RESULTSET RS QUE LEVA O PARAMETRO EM STRING DA BASE DE DADOS COM O METODO GETINT OU GETSTRING
			f.setCodigo(rs.getInt("codigo"));
			f.setNome(rs.getString("nome"));
			f.setApelido(rs.getString("apelido"));
			f.setGenero(rs.getString("genero"));
			f.setEndereco(rs.getString("endereco"));
			f.setDataNascimento(rs.getString("dataNascimento"));
			f.setNacionalidade(rs.getString("nacionalidade"));
			f.setEmail(rs.getString("email"));
			f.setTelefone(rs.getString("telefone"));
			f.setImagem(rs.getString("imagem"));
			f.setSenha(rs.getString("senha"));
			//E OS DADOS DO OBJECTO F SERAO GUARDADOS NA LISTA QUE CRIEI NO ARRAYLIST LISTA
			//METODO PARA ADICIONAR ALGUMA INFORMAÇAO NA LISTA OU ARRAYLIST
			lista.add(f);
		}
		//PRIMEIRO SE FECHA A CONEXAO E DEPOIS SE INFORMA O TIPO DE RETORNO
		//FORA DO LAÇO DE REPETIÇAO FECHAMOS A CONEXAO PARA NAO TRAVAR A BASE DE DADOS
		rs.close();
		//E POR FIM O RETORNO DO METODO SERA A LISTA
		return lista;
		
	}
	
	
	//Inserir Fornecedor
	//CRIACAO DO METODO INSERIR
		public void InserirFornecedorDAO(String nome, String apelido, String genero, String endereco, String dataNascimento,
				String nacionalidade, String email, String telefone, String imagem, String senha) throws Exception {
			//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
			ConexaoDAO conexao = new ConexaoDAO();
			//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
			Connection connection = conexao.ConexaoDAO();
			//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
			PreparedStatement ps = null;		
		
				try {
					//CRIAR O COMANDO DE CONSULTA SQL INSERT DENTRO DE UMA VARIAVEL E ADICIONAMOS UNS PARAMETROS VALUES
					String queryInserirBD = "INSERT INTO fornecedores(nome, apelido, genero, endereco, dataNascimento, nacionalidade,"
							+ " email, telefone, imagem, senha) VALUES (?,?,?,?,?,?,?,?,?,?)";
					
					ps=connection.prepareStatement(queryInserirBD);
					
					ps.setString(1, nome);
					ps.setString(2, apelido);
					ps.setString(3, genero);
					ps.setString(4, endereco);
					ps.setString(5, dataNascimento);
					ps.setString(6, nacionalidade);
					ps.setString(7, email);
					ps.setString(8, telefone);
					ps.setString(9, imagem);
					ps.setString(10, senha);
					int row = ps.executeUpdate();
					
					
					ps.close();
					
				} catch (Exception e) {
					System.out.print(e);
				}
			
		}
		//OUTRO METODO PARA INSRIR
		/*public boolean gravarOutro(Fornecedor fornecedor) throws Exception{
			
			try {
				String sql;
				ConexaoDAO conexao = new ConexaoDAO();
				Connection conn = conexao.ConexaoDAO();
				if(fornecedor.getCodigo()==0) {
					sql = "INSERT INTO Fornecedores(codigo, nome, apelido, genero, endereco, dataNascimento,"
							+ " nacionalidade, email, telefone) VALUES (?,?,?,?,?,?,?,?,?)";
				}else {
					sql = "UPDATE fornecedores set nome=?, apelido=?, genero=?, "
							+ "endereco=?, dataNascimento=?, nacionalidade=?, email=?, telefone=? where codigo = ?";
				}
				PreparedStatement ps = conn.prepareStatement(sql);
				
				ps.setString(1, fornecedor.getNome());
				ps.setString(2, fornecedor.getApelido());
				ps.setString(3, fornecedor.getGenero());
				ps.setString(4, fornecedor.getEndereco());
				ps.setString(5, fornecedor.getDataNascimento());
				ps.setString(6, fornecedor.getNacionalidade());
				ps.setString(7, fornecedor.getEmail());
				ps.setString(8, fornecedor.getTelefone());
				if(fornecedor.getCodigo()>0) {
					ps.setInt(1, fornecedor.getCodigo());
				}
				ps.execute();
				ps.close();
				return true;
				
			} catch (Exception e) {
				
			}
			return false;
		}*/
		
		//METODO DELETAR 
		public boolean deletarFornecedor(FornecedorModel fornecedor) {
			
			try {
				ConexaoDAO conexao = new ConexaoDAO();
				String deletarSQL = "DELETE FROM fornecedores where codigo = ?";
				Connection conn = conexao.ConexaoDAO();
				PreparedStatement ps = conn.prepareStatement(deletarSQL);
				ps.setInt(1, fornecedor.getCodigo());
				ps.execute();
				ps.close();
				return true;
			} catch (Exception e) {
				System.out.println(e);
				return false;
			}
		}
		
		//METODO PARA EXIBIR DADOS DA BASE DE DADOS NO FORMULARIO ATRAVES DO CODIGO
		public FornecedorModel getPorCodigo(int codigo) throws Exception{
			
			FornecedorModel f = new FornecedorModel();
			String chamaCodigo = "SELECT * from fornecedores where codigo = ?";
			ConexaoDAO conexao = new ConexaoDAO();
			Connection conn = conexao.ConexaoDAO();
			
			PreparedStatement pstm = conn.prepareStatement(chamaCodigo);
			pstm.setInt(1, codigo);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				 
			f.setCodigo(rs.getInt("codigo"));
			f.setNome(rs.getString("nome"));
			f.setApelido(rs.getString("apelido"));
			f.setGenero(rs.getString("genero"));
			f.setEndereco(rs.getString("endereco"));
			f.setDataNascimento(rs.getString("dataNascimento"));
			f.setNacionalidade(rs.getString("nacionalidade"));
			f.setEmail(rs.getString("email"));
			f.setTelefone(rs.getString("telefone"));
			f.setImagem(rs.getString("imagem"));
			f.setSenha(rs.getString("senha"));
			}
			pstm.close();
			return f;
			
		}
		
		/*
		
		//ATUALIZAR FORNECEDOR
		public boolean atualizarFornecedor(Fornecedor fornecedor) throws Exception{
			String queryAtualizarFornecedores = "update fornecedores set nome=?, apelido=?, genero=?, "
					+ "endereco=?, dataNascimento=?, nacionalidade=?, email=?, telefone=? where codigo = ?;";
			boolean linhaAtualizada;
			try (	ConexaoDAO conexao = new ConexaoDAO();
					Connection conn = conexao.ConexaoDAO();
					PreparedStatement statement = conexao.prepareStatement(queryAtualizarFornecedores)
					){
				statement.setString(1, fornecedor.getNome());
				statement.setString(2, fornecedor.getApelido());
				statement.setString(3, fornecedor.getGenero());
				statement.setString(4, fornecedor.getEndereco());
				statement.setString(5, fornecedor.getDataNascimento());
				statement.setString(6, fornecedor.getNacionalidade());
				statement.setString(7, fornecedor.getEmail());
				statement.setString(8, fornecedor.getTelefone());
				statement.setInt(9, fornecedor.getCodigo());
				
				
				linhaAtualizada = statement.executeUpdate() > 0;
				desconectar();
			}
			return linhaAtualizada;
		}
*/
		
		
		
		
		public void AtualizarFornecedorDAO(int codigo, String nome, String apelido, String genero, String endereco, String dataNascimento,
				String nacionalidade, String email, String telefone, String senha) throws Exception {
			//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
			ConexaoDAO conexao = new ConexaoDAO();
			//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
			Connection connection = conexao.ConexaoDAO();
			//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
			PreparedStatement ps = null;
			FornecedorModel forn = new FornecedorModel();
	
				try {
					
					String queryInserirBD = "UPDATE fornecedores SET nome=?, apelido=?, genero=?, "
								+ "endereco=?, dataNascimento=?, nacionalidade=?, email=?, telefone=?, senha=? WHERE codigo = ?";
					
					ps=connection.prepareStatement(queryInserirBD);
					ps.setString(1, nome);
					ps.setString(2, apelido);
					ps.setString(3, genero);
					ps.setString(4, endereco);
					ps.setString(5, dataNascimento);
					ps.setString(6, nacionalidade);
					ps.setString(7, email);
					ps.setString(8, telefone);
					//ps.setString(9, imagem);
					ps.setString(9, senha);
					ps.setInt(10, codigo);
					ps.executeUpdate();
					ps.close();
					
				} catch (Exception e) {
					System.out.print(e);
				}
			
		}
}

