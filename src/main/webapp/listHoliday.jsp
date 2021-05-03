<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des congés</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<table id="table-1" class="table table-striped table-bordered">
		<thead class="thead-dark">
			<tr>
				<th>Solde congé</th>
				<th>Date de début</th>
				<th>Date de fin</th>
				<th>Date de demande</th>
				<th>Supprimer</th>
				<th>Modifier</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${holiday}" var="h">
				<tr>
					<td>${ h.holidayPay }</td>
					<td>${ h.startDate }</td>
					<td>${ h.endDate }</td>
					<td>${ h.requestDate }</td>
					<td><a class="btn btn-primary" href="delete?id=${h.idHoliday}">Supprimer</a></td>
					<td><a class="btn btn-primary" href="edit?id=${h.idHoliday}">Modifier</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>