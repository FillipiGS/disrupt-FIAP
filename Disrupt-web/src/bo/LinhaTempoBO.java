package bo;

import bean.LinhaTempo;
import dao.LinhaTempoDAO;

public class LinhaTempoBO {
	
	private LinhaTempoDAO linhaTempoDAO = null;
	
    public LinhaTempo detalharLinhaTempo(int id){
    	linhaTempoDAO = new LinhaTempoDAO();
        return linhaTempoDAO.detalharLinhaTempo(id);
    }

}
