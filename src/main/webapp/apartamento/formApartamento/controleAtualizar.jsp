<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
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
	
	String quartos = request.getParameter("quartos");
	String salas = request.getParameter("salas");
	String banheiros = request.getParameter("banheiros");
	String tipoAp = request.getParameter("tipoApartamento");
	String estado = request.getParameter("estado");
	String imovelC = request.getParameter("imovelID");
	String cidadeC = request.getParameter("cidadeID");
	String preco = request.getParameter("preco");
	Part imagem = request.getPart("imagem");
	
	 
	String nomeFicheiro = imagem.getSubmittedFileName();
	String uploadPath = "C:/Users/Jocas Achar/eclipse-workspace/sistema-imobiliario/src/main/webapp/fotos/fotoapartamento/"+nomeFicheiro;

	try {
		FileOutputStream fops = new FileOutputStream(uploadPath);
		InputStream is = imagem.getInputStream();
		byte[] data = new byte[is.available()];
		is.read(data);
		fops.write(data);
		fops.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	
ApartamentoDao adao = new ApartamentoDao();
try {
	adao.AtualizarApartamentoDAO(quartos, salas, banheiros, tipoAp, estado, imovelC, cidadeC, preco, nomeFicheiro);
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	 
	%>

	
	<script type="text/javascript">
	window.location.href="http://localhost:8080/sistema-imobiliario/apartamento/apartamentos.jsp"
	</script>
</body>
</html>