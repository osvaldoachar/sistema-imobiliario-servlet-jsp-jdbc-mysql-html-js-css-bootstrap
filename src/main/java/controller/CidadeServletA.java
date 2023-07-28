package controller;


import java.io.IOException;
import java.io.PrintWriter;

import dao.*;
import jakarta.servlet.http.HttpServletResponse;
import model.*;
import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;


/**
 * Servlet implementation class GerenciarFornecedor
 */
public class CidadeServletA extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CidadeServletA() {
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
		
		CidadeModel c = new CidadeModel();
		
		try {
			CidadeDao af = new CidadeDao();
			
			if(acao.equals("alterar")) {
				c = af.getPorCodigo(Integer.parseInt(codigo));
				if(c.getIdCidade()>0) {
					RequestDispatcher disp = getServletContext().getRequestDispatcher("/sistemaFornecedor/formCidade/atualizarCidadeA.jsp");
					request.setAttribute("cidade", c);
					disp.forward(request, response);
				}else {
					Mensagem = "Cidade Não Encontrada!";
				}
			}
			CidadeDao excluirC = new CidadeDao();
			if(acao.equals("deletar")) {
				c.setIdCidade(Integer.parseInt(codigo));
				if(excluirC.deletarCidade(c)) {
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
		out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/sistema/cidades.jsp\"");
		out.println("</script>");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
