package bo;

import bean.Curiosidade;
import dao.CuriosidadeDAO;

public class CuriosidadeBO {
	
	private CuriosidadeDAO curiosidadeDAO = null;
	
    public Curiosidade detalharCuriosidade(int id){
    	curiosidadeDAO = new CuriosidadeDAO();
        return curiosidadeDAO.detalharCuriosidade(id);
    }

}
