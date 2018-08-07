package br.ucb.modelo.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import br.ucb.modelo.Jogo;
import br.ucb.modelo.Selecao;

public class JogoDAO implements Serializable {
	private static final long serialVersionUID = 1L;
	private Connection con;

	public JogoDAO() throws SQLException {
		this.con = ConnectionFactory.getConnection();
	}
	
	public Jogo consultar(long id, Map<Long, Selecao> selecoes) throws SQLException {
		Jogo jogo = new Jogo();
		String sql = "SELECT * FROM jogos WHERE id=?";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setLong(1, id);
		ResultSet rs = stmt.executeQuery();
		if (rs.first()) {
			jogo.setId(rs.getLong("id"));
			jogo.setSelecao1(selecoes.get(rs.getLong("idSelecao1")));
			jogo.setGolSelecao1(rs.getInt("golSelecao1"));
			jogo.setSelecao2(selecoes.get(rs.getLong("idSelecao2")));
			jogo.setGolSelecao2(rs.getInt("golSelecao2"));
			jogo.setOcorreu(rs.getBoolean("ocorreu"));
			jogo.setDia(rs.getDate("dia"));
		}
		rs.close();
		stmt.close();
		return jogo;
	}
	
	public List<Jogo> listar(Map<Long, Selecao> selecoes) throws SQLException {
		String sql = "SELECT * FROM jogos";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		List<Jogo> jogos = new ArrayList<Jogo>();
		while (rs.next()) {
			Jogo jogo = new Jogo();
			jogo.setId(rs.getLong("id"));
			jogo.setSelecao1(selecoes.get(rs.getLong("idSelecao1")));
			jogo.setGolSelecao1(rs.getInt("golSelecao1"));
			jogo.setSelecao2(selecoes.get(rs.getLong("idSelecao2")));
			jogo.setGolSelecao2(rs.getInt("golSelecao2"));
			jogo.setOcorreu(rs.getBoolean("ocorreu"));
			jogo.setDia(rs.getDate("dia"));
			jogos.add(jogo);
		}
		rs.close();
		stmt.close();
		return jogos;
	}
	
	public int alterarPlacar(Jogo jogo) throws SQLException {
		if (jogo == null)
			return 0;
		String sql="UPDATE jogos SET golSelecao1=?, golSelecao2=?, ocorreu=? WHERE id=?;";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, jogo.getGolSelecao1());
		stmt.setInt(2, jogo.getGolSelecao2());
		stmt.setBoolean(3, jogo.isOcorreu());
		stmt.setLong(4, jogo.getId());
		int retorno = stmt.executeUpdate();
		stmt.close();
		return retorno;
	}

}