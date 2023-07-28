<%@page import="dao.ImovelDao"%>

<%@page import="model.CidadeModel"%>
<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fornecedor Inserido!</title>
</head>
<body>
	<%
	
	 String nome = request.getParameter("nomeImovel");
	 String nomeAbreviado = request.getParameter("nomeAbrev");
	 String endereco = request.getParameter("endereco");
	 String email = request.getParameter("email");
	 String telefone = request.getParameter("telefone");
	 String fChave = request.getParameter("fChave");
	 String cChave = request.getParameter("cChave");
	
	 
	 ImovelDao imo = new ImovelDao();
	 imo.InserirImovelDao(nome, nomeAbreviado, endereco, email, telefone, fChave, cChave);
	 
	%>

	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/sistema-imobiliario/sistema/imoveis.jsp"
	</script>
</body>
</html>