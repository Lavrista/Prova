<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>Copa do Mundo</title>
</head>
<body>
	<h1>Jogos da Primeira Fase</h1>
	<font color="#FF0000">${erro}</font>
	<table border="1">
	<tr bgcolor="#AAAAAA">
		<th>DATA</th>
		<th>OCORREU</th>
		<th>PONTOS</th>
		<th>TIME</th>
		<th>GOLS</th>
		<th>X</th>
		<th>GOLS</th>
		<th>TIME</th>
		<th>PONTOS</th>
		<th></th>
	</tr>
	<c:forEach var="jogo" items="${copa.jogos}">
		<tr>
			<form method="post" action="controlador">
				<input type="hidden" name="acao" value="salvar">
				<input type="hidden" name="id" value="${jogo.id}">
				<td><fmt:formatDate value="${jogo.dia}"/></td>
				<c:if test="${jogo.ocorreu}">
					<td><input type="checkbox" name="ocorreu" checked="checked" />
				</c:if>
				<c:if test="${!jogo.ocorreu}">
					<td><input type="checkbox" name="ocorreu" />
				</c:if>
				<td>${jogo.selecao1.pontos}</td>
				<td>${jogo.selecao1.nome}</td>
				<td><input type="text" name="golSelecao1" value="${jogo.golSelecao1}"></td>
				<td>X</td>
				<td><input type="text" name="golSelecao2" value="${jogo.golSelecao2}"></td>
				<td>${jogo.selecao2.nome}</td>
				<td>${jogo.selecao2.pontos}</td>
				<td><input type="submit" value="Atualizar"></td>
			</form>
		</tr>
	</c:forEach>
	</table>
	<br/>
	<a href="index.html">Voltar</a>
</body>
</html>