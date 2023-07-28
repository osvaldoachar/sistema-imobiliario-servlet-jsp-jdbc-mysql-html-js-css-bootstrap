<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dao.ApartamentoDao"%>
<%@page import="model.ApartamentoModel"%>
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
	
	try {
		String quartos = request.getParameter("quartos");
		String salas = request.getParameter("salas");
		String banheiros = request.getParameter("banheiros");
		String tipoAp = request.getParameter("tipoApartamento");
		String estado = request.getParameter("estado");
		String imovelC = request.getParameter("imovelID");
		String cidadeC = request.getParameter("cidadeID");
		String preco = request.getParameter("preco");
		//Part imagem = request.getPart("imagem");
		
		//InputStream in = imagem.getInputStream();
		
		ApartamentoDao aDao = new ApartamentoDao();
		aDao.InserirApartamentoDao(quartos, salas, banheiros, tipoAp, estado, imovelC, cidadeC, preco);
		
		
		
	%>

	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/SistemaImobiliario/sistemaFornecedor/cidades.jsp"
	</script>
</body>
</html>