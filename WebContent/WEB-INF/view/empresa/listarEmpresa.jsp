<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../cabecalho.jsp"/>
<jsp:useBean id="dao" class="br.com.ifpe.empresa.dao.EmpresaDao" />
<title>Insert title here</title>
</head>
<body>
	<ul>
  	<c:forEach var="empresa" items="${dao.listar()}">
		<li> 
		${empresa.codigo} |${empresa.precoCusto} |${empresa.precoVenda}
		<c:choose>
			<c:when test="${not empty empresa.nome}">
				${empresa.nome}
			</c:when>
			<c:otherwise>
				A empresa não pode ser cadastrada sem nome.
			</c:otherwise>
		</c:choose>
		</li>
	</c:forEach>
	</ul>
</body>
</html>