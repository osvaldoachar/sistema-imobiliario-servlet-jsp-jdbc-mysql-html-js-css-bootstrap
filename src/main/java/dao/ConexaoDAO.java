package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
	
	public class ConexaoDAO {

		//DECLARACAO DAS VARIAVEIS QUE SERAO USADAS NA CONEXAO
		public String URLDB = "jdbc:mysql://localhost:3306/imobiliaria?useSSL=false";
		public String UsuarioDB = "root";
		public String SenhaDB = "";
		public Connection conexao;
		
		
		
		//CRIACAO DO METODO CONSTRUTOR DE CONEXAO PARA INDICAR O DRIVER DO MYSQL
		//O NOME DO METODO CONSTRUTOR DEVE SER O MESMO NOME DA CLASSE DE CONEXAO
		public Connection ConexaoDAO() throws Exception {
			//USAMOS O METODO forName DA CLASSE CLASS PARA INDICAR O CAMINHO DO DRIVER DA BASE DE DADOS
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conexao = DriverManager.getConnection(URLDB, UsuarioDB, SenhaDB);
				//System.out.println("Conectou");
			}catch(SQLException e) {
				System.out.print(e);
			}catch(ClassNotFoundException ex) {
				System.out.println(ex);
			}
			return conexao;
		}
		

		//O ULTIMO METODO E PARA FECHAR AS CONEXOES COM A BASE DE DADOS, PARA QUE NAO FIQUEM CONEXOES ABERTAS NA BASE DE DADOS
		//O MYSQL TEM UM LIMITE DE CONEXAO, SE AS CONEXOES EXCEDEREM A BASE DE DADOS COMEÇA A TRAVAR
	
}
