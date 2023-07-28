package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.CidadeModel;
import model.FornecedorModel;

public class CidadeDao extends ConexaoDAO {
	//METODO CONTRUTOR DA CLASSE PRICIPAL (FORNECEDOR DAO) E OBRIGATORIO
	public CidadeDao() throws Exception {
		super();
	}
	
public ArrayList<CidadeModel> getLista() throws Exception, SQLException{
	
		
		//VAMOS CRIAR UMA ARRAYLIST DO TIPO FORNECEDOR COM O NOME LISTA
		ArrayList<CidadeModel> lista = new ArrayList<CidadeModel>();
		//CRIAR UMA VARIAVEL QUE VAI RECEBER A CONSULTA SQL
		String chamarTodos = "SELECT * from cidade";
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
			CidadeModel c = new CidadeModel();
			//O OBJECTO F VAI RECEBER O RESULTSET RS QUE LEVA O PARAMETRO EM STRING DA BASE DE DADOS COM O METODO GETINT OU GETSTRING
			c.setIdCidade(rs.getInt("idcidade"));
			c.setNome(rs.getString("nomeCidade"));
			c.setPopulacao(rs.getString("populacao"));
			c.setProvicia(rs.getString("provincia"));
			
			//E OS DADOS DO OBJECTO F SERAO GUARDADOS NA LISTA QUE CRIEI NO ARRAYLIST LISTA
			//METODO PARA ADICIONAR ALGUMA INFORMAÇAO NA LISTA OU ARRAYLIST
			lista.add(c);
		}
		//PRIMEIRO SE FECHA A CONEXAO E DEPOIS SE INFORMA O TIPO DE RETORNO
		//FORA DO LAÇO DE REPETIÇAO FECHAMOS A CONEXAO PARA NAO TRAVAR A BASE DE DADOS
		rs.close();
		//E POR FIM O RETORNO DO METODO SERA A LISTA
		return lista;
		
	}







public void InserirCidadeDAO(String nome, String populacao, String provicia) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;		

		try {
			//CRIAR O COMANDO DE CONSULTA SQL INSERT DENTRO DE UMA VARIAVEL E ADICIONAMOS UNS PARAMETROS VALUES
			String queryInserirBD = "INSERT INTO cidade(nomeCidade, populacao, provincia) VALUES (?,?,?)";
			
			ps=connection.prepareStatement(queryInserirBD);
			
			ps.setString(1, nome);
			ps.setString(2, populacao);
			ps.setString(3, provicia);	
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}







public boolean deletarCidade(CidadeModel cidade) {
	
	try {
		ConexaoDAO conexao = new ConexaoDAO();
		String deletarSQL = "DELETE FROM cidade where idcidade = ?";
		Connection conn = conexao.ConexaoDAO();
		PreparedStatement ps = conn.prepareStatement(deletarSQL);
		ps.setInt(1, cidade.getIdCidade());
		ps.execute();
		ps.close();
		return true;
	} catch (Exception e) {
		System.out.println(e);
		return false;
	}
}









public CidadeModel getPorCodigo(int idCidade) throws Exception{
	
	CidadeModel c = new CidadeModel();
	String chamaCodigo = "SELECT * from cidade where idcidade = ?";
	ConexaoDAO conexao = new ConexaoDAO();
	Connection conn = conexao.ConexaoDAO();
	
	PreparedStatement pstm = conn.prepareStatement(chamaCodigo);
	pstm.setInt(1, idCidade);
	ResultSet rs = pstm.executeQuery();
	if(rs.next()) {
		 
	c.setIdCidade(rs.getInt("idcidade"));
	c.setNome(rs.getString("nomeCidade"));
	c.setPopulacao(rs.getString("populacao"));
	c.setProvicia(rs.getString("provincia"));

	}
	pstm.close();
	return c;
	
}










public void AtualizarCidadeDAO( int idCidade, String nome, String populacao, String provicia) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;
	CidadeModel forn = new CidadeModel();

		try {
			
			String queryInserirBD = "UPDATE cidade SET nomeCidade=?, populacao=?, provincia=? WHERE idcidade = ?";
			
			ps=connection.prepareStatement(queryInserirBD);
			ps.setString(1, nome);
			ps.setString(2, populacao);
			ps.setString(3, provicia);
			ps.setInt(4, idCidade);
	
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}
}
