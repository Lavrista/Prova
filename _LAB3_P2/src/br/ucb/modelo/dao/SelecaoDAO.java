package br.ucb.modelo.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ucb.modelo.Selecao;

public class SelecaoDAO implements Serializable {
	private static final long serialVersionUID = 1L;
	private Connection con;

	public SelecaoDAO() throws SQLException {
		this.con = ConnectionFactory.getConnection();
	}
	
	public List<Selecao> listar() throws SQLException {
		String sql = "SELECT * FROM selecao";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		List<Selecao> selecoes = new ArrayList<Selecao>();
		while (rs.next()) {
			Selecao selecao = new Selecao();
			selecao.setId(rs.getLong("id"));
			selecao.setNome(rs.getString("nome"));
			selecao.setGrupo(rs.getString("grupo").charAt(0));
			selecoes.add(selecao);
		}
		rs.close();
		stmt.close();
		return selecoes;
	}

}