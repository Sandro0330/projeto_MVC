<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Programação e Informática</title>
</head>
<body>
	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post" commandName="produto" enctype="multipart/form-data">

		<div>
			<label>Titulo</label>
			<form:input path="titulo"/>
			<form:errors path="titulo"/>
		</div>
		<br>
		<div>
			<label>Descrição</label>
			<form:textarea path="descricao" rows="10" cols="20"/>
			<form:errors path="descricao"/>
		</div>
		<br>
		<div>
			<label>Páginas</label>
			<form:input path="paginas" />
			<form:errors path="paginas"/>
		</div>
		<div>
			<label>Data de Lançamento</label>
			<form:input path="dataLancamento" />
			<form:errors path="dataLancamento"/>
		</div>
		<br>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<form:input path="precos[${status.index}].valor"/>
				<form:hidden path="precos[${status.index }].tipo" value="${tipoPreco }"/>
			</div>			
		</c:forEach>
		<div>
		<!-- Configurando para aceitar todo tipo de arquivo   -->
			<label>Sumário</label>
			<input name="sumario" type="file">
		</div>
		
		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html> 