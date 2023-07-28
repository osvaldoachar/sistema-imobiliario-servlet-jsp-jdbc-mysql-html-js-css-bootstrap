package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import dao.ApartamentoDao;
import dao.ComentarioDao;

/**
 * Servlet implementation class ComentarioServlet
 */
public class ComentarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComentarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
    		String nomeUsuario = request.getParameter("nome");
    		String ocupacao = request.getParameter("ocupacao");
    		String comentario = request.getParameter("comentario");
    	
    		
    		ComentarioDao comDao = new ComentarioDao();
    		
    		comDao.InserirComentarioDAO(nomeUsuario, ocupacao, comentario);
    		
    	}catch(Exception e) {
    		
    	}
		out.println("<script type=\"text/javascript\">");
        out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/index.jsp\"");
		out.println("</script>");
		
    }

}
