package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.apache.catalina.ha.backend.Sender;

import dao.ApartamentoDao;
import dao.CidadeDao;
import dao.ConexaoDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.ApartamentoModel;
import model.CidadeModel;


/**
 * Servlet implementation class ApartamentoServlet
 */
@WebServlet("/ApartamentoServlet")
@MultipartConfig(maxFileSize=16*1024*1024)
public class ApartamentoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /** 
     * @see HttpServlet#HttpServlet()
     */
    public ApartamentoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String Mensagem = "";
		
		String acao = request.getParameter("acao");
		String codigo = request.getParameter("codigo");
		
		ApartamentoModel a = new ApartamentoModel();
		
		try {
			ApartamentoDao af = new ApartamentoDao();
			
			if(acao.equals("alterar")) {
				a = af.getPorCodigo(Integer.parseInt(codigo));
				if(a.getIdap()>0) {
					RequestDispatcher disp = getServletContext().getRequestDispatcher("/apartamento/formApartamento/atualizarAP.jsp");
					request.setAttribute("ap", a);
					disp.forward(request, response);
				}else {
					Mensagem = "Apartamento Não Encontrado!";
				}
			}
			ApartamentoDao excluirA = new ApartamentoDao();
			if(acao.equals("deletar")) {
				a.setIdap(Integer.parseInt(codigo));
				if(excluirA.deletarApartamento(a)) {
					Mensagem = "Apartamento deletado com sucesso!"; 
				}else {
					Mensagem = "Erro ao deletar Apartamento!";
				}
			}
		} catch (Exception e) {
			out.println(e);
			Mensagem = "Erro ao executar acção!" + e;
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println( "alert('"+Mensagem+"')");
		out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/sistema/apartamento.jsp\"");
		out.println("</script>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
    
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
			adao.InserirApartamentoDao(quartos, salas, banheiros, tipoAp, estado, imovelC, cidadeC, preco, nomeFicheiro);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	out.println("<script type=\"text/javascript\">");
		out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/apartamento/apartamentos.jsp\"");
		out.println("</script>");
    }
}
