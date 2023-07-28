

<%@ page import="dao.FornecedorDAO"%>
<%@ page import="dao.ConexaoDAO"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
/*
    String email = request.getParameter("emailLogin");
       String senha = request.getParameter("senhaLogin");
       
       if(email.equalsIgnoreCase("admin@gmail.com") && senha.equals("123")){

       request.getRequestDispatcher("../sistema").forward(request, response);
 }else{
request.getRequestDispatcher("login.jsp").forward(request, response);
       }

*/

String email = request.getParameter("emailLogin");
String senha = request.getParameter("senhaLogin");

try {
	ConexaoDAO conexao = new ConexaoDAO();
	Connection conn = conexao.ConexaoDAO();
	//COMO A CONSULTA SQL NAO TEM NENHUM PARAMETRO NOS PODEMOS USAR O STATEMENT, SE TIVESSE PARAMETROS USARIAMOS PREPAREDSTATEMENT
	Statement stm = conn.createStatement();

	ResultSet rs = stm
	.executeQuery("Select * from fornecedores where email = '" + email + "' and senha = '" + senha + "'");
	if (rs.next()) {
		response.sendRedirect("../sistemaFornecedor/");
	} else if (email.equalsIgnoreCase("admin@gmail.com") && senha.equals("123")) {
		response.sendRedirect("../sistema/");
		
	} else {
		response.sendRedirect("login/login.jsp");
	}
	rs.close();
	stm.close();

} catch (SQLException e) {
	e.printStackTrace();
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>