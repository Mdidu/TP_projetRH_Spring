<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des congé</title>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer"
	src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer"
	src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<cc:import url="http://localhost:8082/projetRH/navbar.html" />

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
					<td><button type="button" class="btn btn-primary"
							data-toggle="modal" data-target="#delete${h.idHoliday}">Supprimer</button></td>
					<td><a class="btn btn-primary" href="edit?id=${h.idHoliday}">Modifier</a></td>
				</tr>

				<div id="delete${h.idHoliday}" class="modal" tabindex="-1"
					role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Supprimer congés</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Voulez-vous supprimer les congés sélectionné?</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<a class="btn btn-primary" href="delete?id=${h.idHoliday}">Supprimer</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</tbody>
	</table>

	<cc:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>