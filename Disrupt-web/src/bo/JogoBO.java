package bo;

import bean.Jogo;
import dao.JogoDAO;

public class JogoBO {
	
	private JogoDAO jogoDAO = null;
	
    public Jogo detalharJogo(int id){
    	jogoDAO = new JogoDAO();
        return jogoDAO.detalharJogo(id);
    }


}
