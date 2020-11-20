package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Curiosidade;
import bo.CuriosidadeBO;

@WebServlet (urlPatterns = {"/detalharCuriosidade"})
public class CuriosidadeController extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    public CuriosidadeController() {
        super();
    }
	
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/detalharCuriosidade":
                detalharCuriosidade(request, response, Integer.parseInt(request.getParameter("id")));
            default:
                response.sendRedirect("index.jsp");
        }

    }
    
    
    private void detalharCuriosidade(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        CuriosidadeBO curiosidadeBO = new CuriosidadeBO();
        Curiosidade curiosidade = curiosidadeBO.detalharCuriosidade(id);

        if(curiosidade != null) {
            request.setAttribute("objCuriosidade", curiosidade);
            request.setAttribute("objIdCuriosidade", id);
            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        }else{
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }
	

}
