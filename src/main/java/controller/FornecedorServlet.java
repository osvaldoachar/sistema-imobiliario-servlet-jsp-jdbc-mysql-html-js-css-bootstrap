package controller;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import dao.*;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.*;
import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;


/**
 * Servlet implementation class GerenciarFornecedor
 */
@MultipartConfig(maxFileSize=16*1024*1024)
public class FornecedorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public FornecedorServlet() {
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
		
		FornecedorModel f = new FornecedorModel();
		
		try {
			FornecedorDAO af = new FornecedorDAO();
			
			if(acao.equals("alterar")) {
				f = af.getPorCodigo(Integer.parseInt(codigo));
				if(f.getCodigo()>0) {
					RequestDispatcher disp = getServletContext().getRequestDispatcher("/sistema/formFornecedor/atualizarFornecedor.jsp");
					request.setAttribute("fornecedor", f);
					disp.forward(request, response);
				}else {
					Mensagem = "Fornecedor Não Encontrado!";
				}
			}
			FornecedorDAO excluirF = new FornecedorDAO();
			if(acao.equals("deletar")) {
				f.setCodigo(Integer.parseInt(codigo));
				if(excluirF.deletarFornecedor(f)) {
					Mensagem = "Fornecedor deletado com sucesso!"; 
				}else {
					Mensagem = "Erro ao deletar fornecedor!";
				}
			}
		
			
		} catch (Exception e) {
			out.println(e);
			Mensagem = "Erro ao executar acção!" + e;
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println( "alert('"+Mensagem+"')");
		out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/sistema/fornecedores.jsp\"");
		out.println("</script>");
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String nome = request.getParameter("nome");
		 String apelido = request.getParameter("apelido");
		 String genero = request.getParameter("genero");
		 String endereco = request.getParameter("endereco");
		 String dataNascimento = request.getParameter("dataNascimento");
		 String nacionalidade = request.getParameter("nacionalidade");
		 String email = request.getParameter("email");
		 String telefone = request.getParameter("telefone");
	        Part imagem = request.getPart("imagem");
	        String senha = request.getParameter("senha");
		 
	        String nomeFicheiro = imagem.getSubmittedFileName();
    		String uploadPath = "C:/Users/Jocas Achar/eclipse-workspace/sistema-imobiliario/src/main/webapp/fotos/fotofornecedor/"+nomeFicheiro;

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

		 try {
			 FornecedorDAO forn = new FornecedorDAO();
			forn.InserirFornecedorDAO(nome, apelido, genero, endereco, dataNascimento, nacionalidade, email, telefone, nomeFicheiro, senha);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			out.println("<script type=\"text/javascript\">");
			out.println("window.location.href=\"http://localhost:8080/sistema-imobiliario/sistema/fornecedores.jsp\"");
			out.println("</script>");
	}

}
