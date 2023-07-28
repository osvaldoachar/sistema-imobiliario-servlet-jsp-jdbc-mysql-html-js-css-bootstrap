<%@page import="model.FornecedorModel"%>
<%@page import="java.sql.SQLException"%>
<%@page import="dao.FornecedorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar Fornecedor</title>
</head>
<body>
	<%
	 int codigo = Integer.parseInt(request.getParameter("codigo"));
	 String nome = request.getParameter("nome");
	 String apelido = request.getParameter("apelido");
	 String genero = request.getParameter("genero");
	 String endereco = request.getParameter("endereco");
	 String dataNascimento = request.getParameter("dataNascimento");
	 String nacionalidade = request.getParameter("nacionalidade");
	 String email = request.getParameter("email");
	 String telefone = request.getParameter("telefone");
     String senha = request.getParameter("senha");

	 FornecedorDAO forn = new FornecedorDAO();

	 forn.AtualizarFornecedorDAO(codigo, nome, apelido, genero, endereco, dataNascimento, nacionalidade, email, telefone, senha);
	%>
	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/sistema-imobiliario/sistema/fornecedores.jsp";
	</script>
</body>
</html>