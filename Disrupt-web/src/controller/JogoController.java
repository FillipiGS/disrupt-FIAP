package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Jogo;
import bo.JogoBO;

@WebServlet (urlPatterns = {"/detalharJogo"})
public class JogoController extends HttpServlet{
	

	private static final long serialVersionUID = 1L;


	public JogoController() {
        super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/detalharJogo":
                detalharJogo(request, response, Integer.parseInt(request.getParameter("id")));
            default:
                response.sendRedirect("index.jsp");
        }

    }
    
    
    private void detalharJogo(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        JogoBO jogoBO = new JogoBO();
        Jogo jogo = jogoBO.detalharJogo(id);

        if(jogo != null) {
            request.setAttribute("objJogo", jogo);
            request.setAttribute("objIdJogo", id);
            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        }else{
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }	

}
