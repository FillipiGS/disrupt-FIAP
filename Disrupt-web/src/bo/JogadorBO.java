package bo;

import java.util.List;

import bean.Jogador;
import dao.JogadorDAO;

public class JogadorBO {
	
	
    private JogadorDAO jogadorDAO = null;


    public int cadastraJogador (Jogador jogador) {
    	jogadorDAO = new JogadorDAO();
        return jogadorDAO.cadastrar(jogador);
    }

    public List<Jogador> listaJogador(){
    	jogadorDAO = new JogadorDAO();
        return JogadorDAO.listar();
    }

    public Jogador detalhaJogador(int id){
    	jogadorDAO = new JogadorDAO();
        return jogadorDAO.detalhar(id);
    }

}
