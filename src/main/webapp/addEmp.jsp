<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajout employé</title>
<link href="../webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-fluid">
	<h2 class="text-center">form ajout employé</h2>
	<form:form action="save" modelAttribute="employee">
		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="name">Nom</form:label>
			<form:input class="form-control col-sm-9" path="name" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="lastName">Prénom</form:label>
			<form:input class="form-control col-sm-9" path="lastName" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="adress">Adresse</form:label>
			<form:input class="form-control col-sm-9" path="adress"></form:input>
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="average">Salaire</form:label>
			<form:input class="form-control col-sm-9" path="average" />
		</div>

		<div class="row form-group ml-4">
			<form:label class="col-sm-3" path="telNumber">Numéro téléphone</form:label>
			<form:input class="form-control col-sm-9" path="telNumber" />
		</div>

		<div class="row form-group ml-4">
			<input class="form-control btn btn-primary col-sm-2" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>