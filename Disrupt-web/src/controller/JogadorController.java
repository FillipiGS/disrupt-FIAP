package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Jogador;
import bo.JogadorBO;

@WebServlet (urlPatterns = {"/cadastrarJogador", "/listarJogador", "/detalharJogador"})
public class JogadorController extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    public JogadorController() {
        super();
    }

 
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/cadastrarJogador":
                cadastrarJogador(request, response);
                break;

            case "/listarJogador":
            	listarJogador(request, response);
                break;

            case "/detalharJogador":
                detalharJogador(request, response, Integer.parseInt(request.getParameter("id")));
                break;

            default:
                response.sendRedirect("index.jsp");

        }

    }
    
    
    public void cadastrarJogador(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Jogador jogador = new Jogador();
        jogador.setId(Integer.parseInt(request.getParameter("id")));
        jogador.setNome(request.getParameter("nome"));
        jogador.setPontuacao(Integer.parseInt(request.getParameter("pontuacao")));


        JogadorBO jogadorBO = new JogadorBO();
        int resultado = jogadorBO.cadastraJogador(jogador);

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.ins");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.ins_err");
        }

    }
    
    
    public void listarJogador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	JogadorBO jogadorBO = new JogadorBO();
        List<Jogador> lista = jogadorBO.listaJogador();

        if (lista != null) {
            request.setAttribute("lista_jogador", lista);
            request.getRequestDispatcher("/WEB-INF/lista.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }
    
    
    private void detalharJogador(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {

        JogadorBO jogadorBO = new JogadorBO();
        Jogador jogador = jogadorBO.detalhaJogador(id);

        if (jogador != null) {
            request.setAttribute("objJogador", jogador);
            request.setAttribute("objIdJogador", id);

            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }
    }
    
}
