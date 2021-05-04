<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Accueil</title>
<meta charset="UTF-8">
<script defer="defer" src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="container-fluid">

	<c:import url="http://localhost:8082/projetRH/navbarHome.html" />

	<h2 class="text-center">Accueil</h2>
	<div class="row text-center">
		<a class="btn btn-primary col-auto mxy-4" href="employee/add">
			ajout employe</a>
	</div>
	<div class="row text-center">
		<a class="btn btn-primary col-auto mt-4" href="employee/list">Consultation
			des employés</a> <a class="btn btn-primary col-auto mt-4 ml-3"
			href="absence/list">Consultation des absences</a>
	</div>
	<div class="row text-center">
		<a class="btn btn-primary col-auto mt-4" href="sanction/list">Consultation
			des sanctions</a> <a class="btn btn-primary col-auto mt-4 ml-3"
			href="holiday/list">Consultation des congés</a>
	</div>
	<c:import url="http://localhost:8082/projetRH/footer.html" />
</body>
</html>