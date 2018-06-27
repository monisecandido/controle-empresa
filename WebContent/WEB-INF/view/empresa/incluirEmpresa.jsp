<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/style.css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../cabecalho.jsp"/>
<title>Insert title here</title>

</head>

<body>
	${msg}

	<div class="content content-incluir">
		<hr>
		<h3>Incluir Empresa</h3>
		<hr>
		<form action="save" method="post">
			<div class="form-group">
				<label for="nome"> nome:</label><br> <input type="text" name="nome" />
			</div>
			<div class="form-group">
				<label for="cnpj"> cnpj:</label><br> <input type="text" name="cnpj" />
			</div>
			<div class="form-group">
				<label for="proprietario"> Proprietario:</label><br><input type="text" name="proprietario" />
			</div>

			<a href="listarProduto" class="btn btn-danger"role="button">Cancelar</a> &nbsp;
			<button type="reset" class="btn btn-default">&nbsp; Limpar &nbsp;</button> &nbsp;
			<button type="submit" class="btn btn-primary">&nbsp;Inserir &nbsp; </button>
		</form>
	</div>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<!-- jquery.bootstrap-touchspin.min.js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.bootstrap-touchspin.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>