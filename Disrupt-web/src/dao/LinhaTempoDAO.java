package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.LinhaTempo;

public class LinhaTempoDAO {
	
	private Connection con;
	
	
    public LinhaTempo detalharLinhaTempo(int id) {

        String sql = null;
        LinhaTempo linhaTempo = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM T_LINHA_TEMPO WHERE ID_LINHA_TEMPO = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                linhaTempo = new LinhaTempo();
                linhaTempo.setId(rs.getInt("ID_LINHA_TEMPO"));
                linhaTempo.setAno(rs.getInt("ANO"));
                linhaTempo.setCronologia(rs.getNString("CRONOLOGIA"));
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

        return linhaTempo;
    }

}
