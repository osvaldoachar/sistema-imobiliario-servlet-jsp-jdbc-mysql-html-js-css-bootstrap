package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.CidadeModel;
import model.ComentarioModel;

public class ComentarioDao {
	
public ArrayList<ComentarioModel> mostrarComentario() throws Exception, SQLException{
	
		
		//VAMOS CRIAR UMA ARRAYLIST DO TIPO FORNECEDOR COM O NOME LISTA
		ArrayList<ComentarioModel> comenta = new ArrayList<ComentarioModel>();
		//CRIAR UMA VARIAVEL QUE VAI RECEBER A CONSULTA SQL
		String chamarTodos = "SELECT * from comentario";
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
			ComentarioModel come = new ComentarioModel();
			//O OBJECTO F VAI RECEBER O RESULTSET RS QUE LEVA O PARAMETRO EM STRING DA BASE DE DADOS COM O METODO GETINT OU GETSTRING
			come.setIdcomentario(rs.getInt("idcomentario"));
			come.setNomeUsuario(rs.getString("nomeUsuario"));
			come.setOcupacao(rs.getString("ocupacao"));
			come.setComentario(rs.getString("comentario"));
			
			//E OS DADOS DO OBJECTO F SERAO GUARDADOS NA LISTA QUE CRIEI NO ARRAYLIST LISTA
			//METODO PARA ADICIONAR ALGUMA INFORMAÇAO NA LISTA OU ARRAYLIST
			comenta.add(come);
		}
		//PRIMEIRO SE FECHA A CONEXAO E DEPOIS SE INFORMA O TIPO DE RETORNO
		//FORA DO LAÇO DE REPETIÇAO FECHAMOS A CONEXAO PARA NAO TRAVAR A BASE DE DADOS
		rs.close();
		//E POR FIM O RETORNO DO METODO SERA A LISTA
		return comenta;
		
	}





public void InserirComentarioDAO(String nomeUsuario, String ocupacao, String comentario) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;		

		try {
			//CRIAR O COMANDO DE CONSULTA SQL INSERT DENTRO DE UMA VARIAVEL E ADICIONAMOS UNS PARAMETROS VALUES
			String queryInserirBD = "INSERT INTO comentario(nomeUsuario, ocupacao, comentario) VALUES (?,?,?)";
			
			ps=connection.prepareStatement(queryInserirBD);
			
			ps.setString(1, nomeUsuario);
			ps.setString(2, ocupacao);
			ps.setString(3, comentario);	
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}
}
