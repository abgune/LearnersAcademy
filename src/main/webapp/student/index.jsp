<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Student</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- UIkit CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.16.4/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.16.4/dist/js/uikit.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.16.4/dist/js/uikit-icons.min.js"></script>


</head>
<body class="uk-height-1-1@m">
	<%@ include file="../header.jsp"%>

	<div class="uk-container uk-margin-large-top">
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Students</h2>

		<a class="uk-button uk-button-secondary uk-border-rounded uk-align-right" href="${pageContext.request.contextPath}/students/create">New</a>
		<table class="uk-table uk-table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Surname</th>
					<th>Date of birth</th>
					<th>Identity Number</th>
					<th>Address</th>
					<th>Class</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${studentList}">
					<tr>
						<td>${student.getId()}</td>
						<td>${student.getName()}</td>
						<td>${student.getSurname()}</td>
						<td>${student.getAge()}</td>
						<td>${student.getIdentity()}</td>
						<td>${student.getAddress()}</td>
						<td>${student.getClassesSub().getName()}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>

</html>