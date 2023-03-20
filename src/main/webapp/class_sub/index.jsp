<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Class</title>
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
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Classes</h2>
		<a
			class="uk-button uk-button-secondary uk-border-rounded uk-align-right"
			href="${pageContext.request.contextPath}/classes/create">New</a>

		<table class="uk-table uk-table-striped uk-width-1-1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Subjects</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cls" items="${classList}">

					<tr>
						<td>${cls.getId()}</td>
						<td>${cls.getName()}</td>
						<td><c:forEach var="subj" items="${cls.getSubjects()}">
						 || ${subj.getName() }
						</c:forEach></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>

</html>