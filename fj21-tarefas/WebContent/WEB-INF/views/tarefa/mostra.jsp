<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="resources/css/tarefas.css" rel="stylesheet">
<link href="resources/css/jquery.css" rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<title>Mostrar Tarefa</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descri��o: <br>
		<textarea name="descricao" cols="100" rows="5"><%--
		--%>${tarefa.descricao}<%--
		--%></textarea><br>
		
		Finalizado? <input type="checkbox" name="finalizado"
		value="true" ${tarefa.finalizado? 'checked' : '' }/> <br>
		
		Data de Finaliza��o: <br>
		<input type="text" name="dataFinalizacao"
		value="<fmt:formatDate
			value="${tarefa.dataFinalizacao.time}"
			pattern="dd/MM/yyyy"/>"/>
			<br><br>
			
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>