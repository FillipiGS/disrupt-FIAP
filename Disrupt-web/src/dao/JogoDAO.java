package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import bean.Jogo;

public class JogoDAO {
	
	private Connection con;
	
	
    public Jogo detalharJogo(int id) {

        String sql = null;
        Jogo jogo = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM T_JOGO WHERE ID_JOGO = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                jogo = new Jogo();
                jogo.setId(rs.getInt("ID_JOGO"));
                jogo.setPergunta(rs.getNString("PERGUNTA"));
                jogo.setResposta(rs.getBoolean("RESPOSTA"));
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

        return jogo;
    }


}
