package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dao.ImovelDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ImovelModel;

/**
 * Servlet implementation class ImovelServlet
 */

public class ImovelServletA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImovelServletA() {
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
		
		ImovelModel i = new ImovelModel();
		
		try {
			ImovelDao af = new ImovelDao();
			
			if(acao.equals("alterar")) {
				i = af.getPorCodigo(Integer.parseInt(codigo));
				if(i.getIdimovel()>0) {
					RequestDispatcher disp = getServletContext().getRequestDispatcher("/inseririmovel/atualizarImovelA.jsp");
					request.setAttribute("imovel", i);
					disp.forward(request, response);
				}else {
					Mensagem = "Cidade Não Encontrada!";
				}
			}
			ImovelDao excluirI = new ImovelDao();
			if(acao.equals("deletar")) {
				i.setIdimovel(Integer.parseInt(codigo));
				if(excluirI.deletarImovel(i)) {
					Mensagem = "Cidade deletada com sucesso!"; 
				}else {
					Mensagem = "Erro ao deletar Cidade!";
				}
			}
		} catch (Exception e) {
			out.println(e);
			Mensagem = "Erro ao executar acção!" + e;
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println( "alert('"+Mensagem+"')");
		out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/sistema/imoveis.jsp\"");
		out.println("</script>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
