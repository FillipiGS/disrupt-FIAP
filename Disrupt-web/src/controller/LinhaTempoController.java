package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.LinhaTempo;
import bo.LinhaTempoBO;

	
	@WebServlet (urlPatterns = {"/detalharLinhaTempo"})
	public class LinhaTempoController extends HttpServlet {
		
	    private static final long serialVersionUID = 1L;

	    public LinhaTempoController() {
	        super();
	    }
		
	    
	    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        switch (request.getRequestURI()) {
	            case "/detalharLinhaTempo":
	                detalharLinhaTempo(request, response, Integer.parseInt(request.getParameter("id")));
	            default:
	                response.sendRedirect("index.jsp");
	        }

	    }
	    
	    
	    private void detalharLinhaTempo(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
	        LinhaTempoBO linhaTempoBO = new LinhaTempoBO();
	        LinhaTempo linhaTempo = linhaTempoBO.detalharLinhaTempo(id);

	        if(linhaTempo != null) {
	            request.setAttribute("objLinhaTempo", linhaTempo);
	            request.setAttribute("objIdLinhaTempo", id);
	            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
	        }else{
	            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
	        }

	    }
	    
	}

