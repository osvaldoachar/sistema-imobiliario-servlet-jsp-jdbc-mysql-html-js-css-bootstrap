<%@page import="dao.CidadeDao"%>
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
	
	 String nome = request.getParameter("nome");
	 String populacao = request.getParameter("populacao");
	 String provicia = request.getParameter("provincia");
	 
	 CidadeDao city = new CidadeDao();
	 city.InserirCidadeDAO(nome, populacao, provicia);
	 
	%>

	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/sistema-imobiliario/sistema/cidades.jsp"
	</script>
</body>
</html>