<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des sanctions</title>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<cc:import url="http://localhost:8082/projetRH/navbar.html" />

	<table id="table-1" class="table table-striped table-bordered">
		<thead class="thead-dark">
			<tr>
				<th>Description</th>
				<th>Type de sanction</th>
				<th>Supprimer</th>
				<th>Modifier</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${sanction}" var="s">
				<tr>
					<td>${ s.description }</td>
					<td>${ s.sanctionType }</td>
					<td><a class="btn btn-primary"
						href="delete?id=${s.idSanction}">Supprimer</a></td>
					<td><a class="btn btn-primary" href="edit?id=${s.idSanction}">Modifier</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<cc:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>