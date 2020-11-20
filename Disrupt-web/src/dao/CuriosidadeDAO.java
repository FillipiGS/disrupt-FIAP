package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Curiosidade;

public class CuriosidadeDAO {
	
	private Connection con;
	
	
    public Curiosidade detalharCuriosidade(int id) {

        String sql = null;
        Curiosidade curiosidade = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM T_CURIOSIDADE WHERE ID_CURIOSIDADE = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                curiosidade = new Curiosidade();
                curiosidade.setId(rs.getInt("ID_CURIOSIDADE"));
                curiosidade.setDescricao(rs.getNString("DESCRICAO_CURIOSIDADE"));
                curiosidade.setImagem(rs.getBlob("IMAGEM_CURIOSIDADE"));
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

        return curiosidade;
    }

}
