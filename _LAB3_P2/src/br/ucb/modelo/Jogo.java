package br.ucb.modelo;

import java.io.Serializable;
import java.util.Date;

public class Jogo implements Serializable {
	private static final long serialVersionUID = 1L;
	private long id;
	private Selecao selecao1;
	private int golSelecao1;
	private Selecao selecao2;
	private int golSelecao2;
	private boolean ocorreu;
	private Date dia;
	
	public Jogo() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Selecao getSelecao1() {
		return selecao1;
	}

	public void setSelecao1(Selecao selecao1) {
		this.selecao1 = selecao1;
	}

	public int getGolSelecao1() {
		return golSelecao1;
	}

	public void setGolSelecao1(int golSelecao1) {
		this.golSelecao1 = golSelecao1;
	}

	public Selecao getSelecao2() {
		return selecao2;
	}

	public void setSelecao2(Selecao selecao2) {
		this.selecao2 = selecao2;
	}

	public int getGolSelecao2() {
		return golSelecao2;
	}

	public void setGolSelecao2(int golSelecao2) {
		this.golSelecao2 = golSelecao2;
	}

	public boolean isOcorreu() {
		return ocorreu;
	}

	public void setOcorreu(boolean ocorreu) {
		this.ocorreu = ocorreu;
	}

	public Date getDia() {
		return dia;
	}

	public void setDia(Date dia) {
		this.dia = dia;
	}

}