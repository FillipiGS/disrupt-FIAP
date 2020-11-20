package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Personagem;
import bo.PersonagemBO;


@WebServlet (urlPatterns = {"/detalharPersonagem"})
public class PersonagemController extends HttpServlet{
	
    private static final long serialVersionUID = 1L;

    public PersonagemController() {
        super();
    }
	
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/detalharPersonagem":
                detalharPersonagem(request, response, Integer.parseInt(request.getParameter("id")));
            default:
                response.sendRedirect("index.jsp");
        }

    }
    
    
    private void detalharPersonagem(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
    	PersonagemBO personagemBO = new PersonagemBO();
    	Personagem personagem = personagemBO.detalharPersonagem(id);

        if(personagem != null) {
            request.setAttribute("objPersonagem", personagem);
            request.setAttribute("objIdPersonagem", id);
            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        }else{
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }

}
