<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table id="table-1">
	<thead>
		<tr>
			<th>Description</th>
			<th>Type de sanction</th>
			<th>Supprimer</th>
			<th>Modifier</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${sanction}" var="s">
		<tr >
			<td>${ s.description }</td>
			<td>${ s.sanctionType }</td>
			<td><a href="delete?id=${s.idSanction}">Supprimer</a></td>
			<td><a href="edit?id=${s.idSanction}">Modifier</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>