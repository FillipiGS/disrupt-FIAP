package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Jogador;

public class JogadorDAO {
	
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:orcl","RM84649","230294");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    
    private Connection conexao;
	
	public static List<Jogador> listar(){
        List<Jogador> list = new ArrayList<>();

        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from T_JOGADOR");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Jogador jogador = new Jogador();
                jogador.setId(rs.getInt("ID_Jogador"));
                jogador.setNome(rs.getString("NOME"));
                jogador.setPontuacao(rs.getInt("PONTUACAO"));
                list.add(jogador);
            }
        } catch(Exception e) {
            System.out.println(e);
        }
        return list;
    }
	
    public Jogador detalhar(int id) {

        String sql = null;
        Jogador jogador = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            sql = "SELECT * FROM T_JOGADOR WHERE ID_JOGADOR = ?";
            preparedStatement = conexao.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                jogador = new Jogador();
                jogador.setId(resultSet.getInt("ID_Jogador"));
                jogador.setNome(resultSet.getNString("NOME"));
                jogador.setPontuacao(resultSet.getInt("PONTUACAO"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                preparedStatement.close();
                resultSet.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return jogador;
    }
   

	public int cadastrar(Jogador jogador) {
        try {
            String sql = "INSERT INTO T_JOGADOR VALUES(?, ?, ?)";

            Connection conexao = getConnection();
            PreparedStatement ps = conexao.prepareStatement(sql);

            ps.setString(1, String.valueOf(jogador.getId()));
            ps.setString(2, jogador.getNome());
            ps.setString(3, String.valueOf(jogador.getPontuacao()));

            int status = ps.executeUpdate();
            return status;
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return 0;
	}

}
