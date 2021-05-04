<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des employés</title>
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
				<th>Code</th>
				<th>Nom</th>
				<th>Prenom</th>
				<th>Adresse</th>
				<th>Tel</th>
				<th>Salaire</th>
				<th>Supprimer</th>
				<th>Modifier</th>
				<th>Congé</th>
				<th>Sanction</th>
				<th>Absence</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employe}" var="e">
				<tr>
					<td>${ e.idEmployee }</td>
					<td>${ e.name }</td>
					<td>${ e.lastName }</td>
					<td>${ e.adress }</td>
					<td>${ e.average }</td>
					<td>${ e.telNumber }</td>
					<td><button type="button" class="btn btn-primary"
							data-toggle="modal" data-target="#delete${e.idEmployee}">Supprimer</button></td>
					<td><a class="btn btn-primary" href="edit?id=${e.idEmployee}">Modifier</a></td>
					<td><a class="btn btn-primary"
						href="./../holiday/add?id=${e.idEmployee}">Ajouter congé</a></td>
					<td><a class="btn btn-primary"
						href="./../sanction/add?id=${e.idEmployee}">Ajouter une
							sanction</a></td>
					<td><a class="btn btn-primary"
						href="./../absence/add?id=${e.idEmployee}">Ajouter une absence</a></td>
				</tr>

				<div id="delete${e.idEmployee}" class="modal" tabindex="-1"
					role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Supprimer employé</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Voulez-vous supprimer l'employé ${ e.name } ${ e.lastName }?</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<a class="btn btn-primary" href="delete?id=${e.idEmployee}">Supprimer</a>
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