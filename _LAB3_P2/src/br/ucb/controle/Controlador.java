package br.ucb.controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ucb.modelo.CopaMundo;
import br.ucb.modelo.Jogo;

@WebServlet("/controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String acao=request.getParameter("acao");
		RequestDispatcher dispatcher = request.getRequestDispatcher("jogos.jsp");
		CopaMundo copa;
		Jogo jogo;
		try {
			copa = new CopaMundo();
			if ((acao != null) && (acao.equals("salvar"))) {
				try {
					jogo = copa.consultarJogo(Long.parseLong(request.getParameter("id")));
					jogo.setOcorreu(request.getParameter("ocorreu")!=null?true:false);
					jogo.setGolSelecao1(Integer.parseInt(request.getParameter("golSelecao1")));
					jogo.setGolSelecao2(Integer.parseInt(request.getParameter("golSelecao2")));
					copa.salvarJogo(jogo);
				}
				catch (NumberFormatException e) {
					request.setAttribute("erro", "Erro de conversao");
				}
			}
			request.setAttribute("copa", copa);
		} catch (SQLException e) {
			request.setAttribute("erro", "Erro de banco de dados");
		}
		dispatcher.forward(request, response);
	}

}
