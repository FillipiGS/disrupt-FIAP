package bo;

import bean.Personagem;
import dao.PersonagemDAO;

public class PersonagemBO {
	
	private PersonagemDAO personagemDAO = null;
	
    public Personagem detalharPersonagem(int id){
    	personagemDAO = new PersonagemDAO();
        return personagemDAO.detalharPersonagem(id);
    }


}
