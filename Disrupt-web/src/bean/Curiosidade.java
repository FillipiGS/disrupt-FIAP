package bean;

import java.sql.Blob;

public class Curiosidade {
	
	private int id;
	
    private String descricao;

    private Blob imagem;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Blob getImagem() {
        return imagem;
    }

    public void setImagem(Blob blob) {
        this.imagem = blob;
    }

}
