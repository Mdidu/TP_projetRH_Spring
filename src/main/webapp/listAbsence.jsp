<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des absences</title>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer"
	src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer"
	src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">
	<c:import url="http://localhost:8082/projetRH/navbar.html" />

	<table id="table-1" class="table table-striped table-bordered">
		<thead class="thead-dark">
			<tr>
				<th>Justificatif</th>
				<th>Raison</th>
				<th>Nombre de jour</th>
				<th>Supprimer</th>
				<th>Modifier</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${absence}" var="a">
				<tr>
					<td>${ a.justification }</td>
					<td>${ a.reason }</td>
					<td>${ a.nbDay }</td>
					<td><button type="button" class="btn btn-primary"
							data-toggle="modal" data-target="#delete${a.idAbsence}">Supprimer</button></td>
					<td><a class="btn btn-primary" href="edit?id=${a.idAbsence}">Modifier</a></td>
				</tr>
				
				<div id="delete${a.idAbsence}" class="modal" tabindex="-1"
					role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Supprimer absence</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Voulez-vous supprimer l'absence sélectionné?</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<a class="btn btn-primary" href="delete?id=${a.idAbsence}">Supprimer</a>
							</div>
						</div>
					</div>
				</div>
				
			</c:forEach>
		</tbody>
	</table>

	<c:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>