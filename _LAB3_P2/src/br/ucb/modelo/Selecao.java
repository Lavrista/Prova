package br.ucb.modelo;

import java.io.Serializable;

public class Selecao implements Serializable {
	private static final long serialVersionUID = 1L;
	private long id;
	private String nome;
	private char grupo;
	private int pontos;
	
	public Selecao() {
	}
	
	public void apurar(Selecao oponente, int golsMeus, int golsDele) {
		if (golsMeus > golsDele)			
			this.pontos += 3;
		else {
			if (golsMeus == golsDele) {
				this.pontos++;
				oponente.pontos++;
			}
			else
				oponente.pontos += 3;
		}
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public char getGrupo() {
		return grupo;
	}

	public void setGrupo(char grupo) {
		this.grupo = grupo;
	}

	public int getPontos() {
		return pontos;
	}

	public void setPontos(int pontos) {
		this.pontos = pontos;
	}

}