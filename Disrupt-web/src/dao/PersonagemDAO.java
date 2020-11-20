package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Personagem;

public class PersonagemDAO {
	
	private Connection con;
	
	
    public Personagem detalharPersonagem(int id) {

        String sql = null;
        Personagem personagem = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM T_LINHA_TEMPO WHERE ID_LINHA_TEMPO = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
            	personagem = new Personagem();
            	personagem.setId(rs.getInt("ID_PERSONAGEM"));
            	personagem.setNome(rs.getNString("NOME"));
            	personagem.setHistoria(rs.getNString("HISTORIA"));
            	personagem.setImage(rs.getNString("IMAGEM_PERSONAGEM"));
            	
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return personagem;
    }

}
