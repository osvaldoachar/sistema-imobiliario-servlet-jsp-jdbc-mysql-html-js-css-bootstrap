package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.CidadeModel;
import model.ImovelModel;



public class ImovelDao {
	
public ArrayList<ImovelModel> getLista() throws Exception, SQLException{
	
		
		//VAMOS CRIAR UMA ARRAYLIST DO TIPO FORNECEDOR COM O NOME LISTA
		ArrayList<ImovelModel> lista = new ArrayList<ImovelModel>();
		//CRIAR UMA VARIAVEL QUE VAI RECEBER A CONSULTA SQL
		String chamarTodos = "select i.idimovel, i.nomeImovel, i.nomeAbreviado, i.endereco, i.email, f.telefone, "
				+ "concat(f.nome , ' ', f.apelido) as fornecedor, c.nomeCidade as cidade from imovel i, fornecedores f,"
				+ " cidade c where i.fornecedorChave = f.codigo and i.cidadeChave = c.idcidade";
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
			ImovelModel i = new ImovelModel();
			//O OBJECTO F VAI RECEBER O RESULTSET RS QUE LEVA O PARAMETRO EM STRING DA BASE DE DADOS COM O METODO GETINT OU GETSTRING
			i.setIdimovel(rs.getInt("idimovel"));
			i.setNome(rs.getString("nomeImovel"));
			i.setNomeAbreviado(rs.getString("nomeAbreviado"));
			i.setEndereco(rs.getString("endereco"));
			i.setEmail(rs.getString("email"));
			i.setTelefone(rs.getString("telefone"));
			i.setfChave(rs.getString("fornecedor"));
			i.setcChave(rs.getString("cidade"));
			//E OS DADOS DO OBJECTO F SERAO GUARDADOS NA LISTA QUE CRIEI NO ARRAYLIST LISTA
			//METODO PARA ADICIONAR ALGUMA INFORMAÇAO NA LISTA OU ARRAYLIST
			lista.add(i);
		}
		//PRIMEIRO SE FECHA A CONEXAO E DEPOIS SE INFORMA O TIPO DE RETORNO
		//FORA DO LAÇO DE REPETIÇAO FECHAMOS A CONEXAO PARA NAO TRAVAR A BASE DE DADOS
		rs.close();
		//E POR FIM O RETORNO DO METODO SERA A LISTA
		return lista;
		
	}






public void InserirImovelDao(String nome, String nomeAbreviado, String endereco, String email, String fChave,
		String cChave) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;		

		try {
			//CRIAR O COMANDO DE CONSULTA SQL INSERT DENTRO DE UMA VARIAVEL E ADICIONAMOS UNS PARAMETROS VALUES
			String queryInserirBD = "INSERT INTO imovel(nomeImovel, nomeAbreviado, endereco, email, fornecedorChave, cidadeChave) VALUES (?,?,?,?,?,?)";
			
			ps=connection.prepareStatement(queryInserirBD);
			
			ps.setString(1, nome);
			ps.setString(2, nomeAbreviado);
			ps.setString(3, endereco);	
			ps.setString(4, email);
			//ps.setString(5, telefone);
			ps.setString(6, fChave);
			ps.setString(7, cChave);
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}







public boolean deletarImovel(ImovelModel imovel) {
	
	try {
		ConexaoDAO conexao = new ConexaoDAO();
		String deletarSQL = "DELETE FROM imovel where idimovel = ?";
		Connection conn = conexao.ConexaoDAO();
		PreparedStatement ps = conn.prepareStatement(deletarSQL);
		ps.setInt(1, imovel.getIdimovel());
		ps.execute();
		ps.close();
		return true;
	} catch (Exception e) {
		System.out.println(e);
		return false;
	}
}





public ImovelModel getPorCodigo(int idimovel) throws Exception{
	
	ImovelModel i = new ImovelModel();
	String chamaCodigo = "SELECT * from imovel where idimovel = ?";
	ConexaoDAO conexao = new ConexaoDAO();
	Connection conn = conexao.ConexaoDAO();
	
	PreparedStatement pstm = conn.prepareStatement(chamaCodigo);
	pstm.setInt(1, idimovel);
	ResultSet rs = pstm.executeQuery();
	if(rs.next()) {
		 
		i.setIdimovel(rs.getInt("idimovel"));
		i.setNome(rs.getString("nomeImovel"));
		i.setNomeAbreviado(rs.getString("nomeAbreviado"));
		i.setEndereco(rs.getString("endereco"));
		i.setEmail(rs.getString("email"));
		//i.setTelefone(rs.getString("telefone"));
		i.setfChave(rs.getString("fornecedorChave"));
		i.setcChave(rs.getString("cidadeChave"));

	}
	pstm.close();
	return i;
	
}








public void AtualizarImovelDAO(int idimovel, String nome, String nomeAbreviado, String endereco, String email) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;
	ImovelModel forn = new ImovelModel();

		try {
			
			String queryInserirBD = "UPDATE imovel SET nomeImovel=?, nomeAbreviado=?, endereco=?, email=? WHERE idimovel = ?";
			
			ps=connection.prepareStatement(queryInserirBD);
			ps.setString(1, nome);
			ps.setString(2, nomeAbreviado);
			ps.setString(3, endereco);	
			ps.setString(4, email);
			//ps.setString(5, telefone);
			//ps.setString(6, fChave);
			//ps.setString(7, cChave);
		    ps.setInt(5, idimovel);
			
	
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}

}
