<%@page import="dao.CidadeDao"%>
<%@page import="model.CidadeModel"%>
<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cidade Inserida!</title>
</head>
<body>
	<%
	 int idCidade = Integer.parseInt(request.getParameter("idcidade"));
	 String nome = request.getParameter("nome");
	 String populacao = request.getParameter("populacao");
	 String provicia = request.getParameter("provincia");
	
	 
	 CidadeDao city = new CidadeDao();
	 city.AtualizarCidadeDAO(idCidade, nome, populacao, provicia);
	 
	%>

	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/sistema-imobiliario/sistema/cidades.jsp"
	</script>
</body>
</html>