<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des sanctions</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
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
</body>
</html>