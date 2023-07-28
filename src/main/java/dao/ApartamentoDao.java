package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.http.Part;
import model.ApartamentoModel;
import model.ImovelModel;

public class ApartamentoDao {
	
	
public ArrayList<ApartamentoModel> getLista() throws Exception, SQLException{
	
		
		//VAMOS CRIAR UMA ARRAYLIST DO TIPO FORNECEDOR COM O NOME LISTA
		ArrayList<ApartamentoModel> lista = new ArrayList<ApartamentoModel>();
		//CRIAR UMA VARIAVEL QUE VAI RECEBER A CONSULTA SQL
		String chamarTodos = "select a.idapartamento, a.quartos, a.salas, a.banheiros, a.tipoApartamento, a.estado,"
				+ " i.nomeImovel, c.nomeCidade, a.preco, a.imagem, concat(f.nome , ' ', f.apelido) as fornecedor from "
				+ "apartamento a, imovel i, cidade c, fornecedores f where a.imovelChave = i.idimovel and a.chaveCidade = c.idcidade\r\n"
				+ "";
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
			ApartamentoModel a = new ApartamentoModel();
			//O OBJECTO F VAI RECEBER O RESULTSET RS QUE LEVA O PARAMETRO EM STRING DA BASE DE DADOS COM O METODO GETINT OU GETSTRING
			a.setIdap(rs.getInt("idapartamento"));
			a.setQuartos(rs.getString("quartos"));
			a.setSalas(rs.getString("salas"));
			a.setBanheiros(rs.getString("banheiros"));
			a.setTipoAp(rs.getString("tipoApartamento"));
			a.setEstado(rs.getString("estado"));
			a.setImovelC(rs.getString("nomeImovel"));
			a.setCidadeC(rs.getString("nomeCidade"));
			a.setPreco(rs.getString("preco"));
			a.setImagem(rs.getString("imagem"));
			a.setFornecedor(rs.getString("fornecedor"));
		
			//E OS DADOS DO OBJECTO F SERAO GUARDADOS NA LISTA QUE CRIEI NO ARRAYLIST LISTA
			//METODO PARA ADICIONAR ALGUMA INFORMAÇAO NA LISTA OU ARRAYLIST
			lista.add(a);
		}
		//PRIMEIRO SE FECHA A CONEXAO E DEPOIS SE INFORMA O TIPO DE RETORNO
		//FORA DO LAÇO DE REPETIÇAO FECHAMOS A CONEXAO PARA NAO TRAVAR A BASE DE DADOS
		rs.close();
		stm.close();
		conn.close();
		//E POR FIM O RETORNO DO METODO SERA A LISTA
		return lista;
		
	}





public void InserirApartamentoDao(String quartos, String salas, String banheiros, String tipoAp, String estado,
		String imovelC, String cidadeC, String preco, String imagem) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;		

		try {
			//CRIAR O COMANDO DE CONSULTA SQL INSERT DENTRO DE UMA VARIAVEL E ADICIONAMOS UNS PARAMETROS VALUES
			String queryInserirBD = "INSERT INTO apartamento(quartos, salas, banheiros, tipoApartamento, estado, imovelChave, chaveCidade, preco, imagem) VALUES (?,?,?,?,?,?,?,?,?)";
			
			ps=connection.prepareStatement(queryInserirBD);
			
			ps.setString(1, quartos);
			ps.setString(2, salas);
			ps.setString(3, banheiros);	
			ps.setString(4, tipoAp);
			ps.setString(5, estado);
			ps.setString(6, imovelC);
			ps.setString(7, cidadeC);
			ps.setString(8, preco);
			ps.setString(9, imagem);
			
			int row = ps.executeUpdate();
			
			
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}





public boolean deletarApartamento(ApartamentoModel apartamento) {
	
	try {
		ConexaoDAO conexao = new ConexaoDAO();
		String deletarSQL = "DELETE FROM apartamento where idapartamento = ?";
		Connection conn = conexao.ConexaoDAO();
		PreparedStatement ps = conn.prepareStatement(deletarSQL);
		ps.setInt(1, apartamento.getIdap());
		ps.execute();
		ps.close();
		return true;
	} catch (Exception e) {
		System.out.println(e);
		return false;
	}
}



public ApartamentoModel getPorCodigo(int idap) throws Exception{
	
	ApartamentoModel a = new ApartamentoModel();
	String chamaCodigo = "SELECT * from apartamento where idapartamento = ?";
	ConexaoDAO conexao = new ConexaoDAO();
	Connection conn = conexao.ConexaoDAO();
	
	PreparedStatement pstm = conn.prepareStatement(chamaCodigo);
	pstm.setInt(1, idap);
	ResultSet rs = pstm.executeQuery();
	if(rs.next()) {
		 
		
		a.setIdap(rs.getInt("idapartamento"));
		a.setQuartos(rs.getString("quartos"));
		a.setSalas(rs.getString("salas"));
		a.setBanheiros(rs.getString("banheiros"));
		a.setTipoAp(rs.getString("tipoApartamento"));
		a.setEstado(rs.getString("estado"));
		a.setImovelC(rs.getString("imovelChave"));
		a.setCidadeC(rs.getString("chaveCidade"));
		a.setPreco(rs.getString("preco"));
		a.setImagem(rs.getString("imagem"));

	}
	pstm.close();
	return a;
	
}





public void AtualizarApartamentoDAO(String quartos, String salas, String banheiros, String tipoAp, String estado,
		String imovelC, String cidadeC, String preco, String imagem) throws Exception {
	//pRIMEIRA COISA INSTACIAMOS UM OBJECTO DA CLASSE CONEXAO DAO
	ConexaoDAO conexao = new ConexaoDAO();
	//CRIAR UMA VARIAVEL connection DO TIPO OU CLASSE CONNECTION QUE RECEBERA O OJECTO DA CLASSE CONEXAO DAO COM O METODO CONEXAODAO()
	Connection connection = conexao.ConexaoDAO();
	//CRIAR O OBJECTO O VARIAVEL NULA DA CLASSE PREPAREDSTATEENT
	PreparedStatement ps = null;
	ImovelModel forn = new ImovelModel();

		try {
			
			String queryInserirBD = "UPDATE apartamento SET quartos=?, salas=?, banheiros=?, tipoApartamento=?, estado=?, imovelChave=?, chaveCidade=?, preco=?, imagem=? WHERE idapartamento = ?";
			
			ps=connection.prepareStatement(queryInserirBD);
			ps.setString(1, quartos);
			ps.setString(2, salas);
			ps.setString(3, banheiros);	
			ps.setString(4, tipoAp);
			ps.setString(5, estado);
			ps.setString(6, imovelC);
			ps.setString(7, cidadeC);
			ps.setString(8, preco);
			ps.setString(9, imagem);
			//ps.setInt(9, idap);
			ps.executeUpdate();
			ps.close();
			
	
			ps.executeUpdate();
			ps.close();
			
		} catch (Exception e) {
			System.out.print(e);
		}
	
}

}
