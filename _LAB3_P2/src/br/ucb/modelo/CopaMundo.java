package br.ucb.modelo;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.ucb.modelo.dao.JogoDAO;
import br.ucb.modelo.dao.SelecaoDAO;

public class CopaMundo implements Serializable {
	private static final long serialVersionUID = 1L;
	private Map<Long, Selecao> selecoes;
	private List<Jogo> jogos;
	private SelecaoDAO selecaoDAO;
	private JogoDAO jogoDAO;
	
	public CopaMundo() throws SQLException {
		this.selecaoDAO = new SelecaoDAO();
		this.jogoDAO = new JogoDAO();
		this.selecoes = new HashMap<Long, Selecao>();
		for (Selecao selecao : this.selecaoDAO.listar())
			this.selecoes.put(new Long(selecao.getId()), selecao);
		this.jogos = this.jogoDAO.listar(this.selecoes);
		this.apurar();
	}
	
	public void apurar() {
		for (Selecao selecao : this.selecoes.values())
			selecao.setPontos(0);
		for (Jogo jogo : this.jogos) {
			if (jogo.isOcorreu())
				jogo.getSelecao1().apurar(jogo.getSelecao2(), jogo.getGolSelecao1(), jogo.getGolSelecao2());
		}
	}
	
	public Jogo consultarJogo(long idJogo) throws SQLException {
		return this.jogoDAO.consultar(idJogo, this.selecoes);
	}

	public void salvarJogo(Jogo jogo) throws SQLException {
		this.jogoDAO.alterarPlacar(jogo);
		this.jogos = this.jogoDAO.listar(this.selecoes);
		this.apurar();
	}

	public List<Jogo> getJogos() {
		return jogos;
	}

	public void setJogos(List<Jogo> jogos) {
		this.jogos = jogos;
	}

}
