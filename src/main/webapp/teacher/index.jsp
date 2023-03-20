<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Teacher</title>
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
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Teachers</h2>
		<a
			class="uk-button uk-button-secondary uk-border-rounded uk-align-right"
			href="${pageContext.request.contextPath}/teachers/create">New</a>

		<table class="uk-table uk-table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Surname</th>
					<th>Age</th>
					<th>Training Area</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="teacher" items="${teacherList}">

					<tr>
						<td>${teacher.getName()}</td>
						<td>${teacher.getSurname()}</td>
						<td>${teacher.getAge()}</td>
						<td>${teacher.getTrainingArea()}</td>
						<%-- <td>
							<form>
								<select name="class_id" id="class_id"
									class="uk-select uk-width-1-3@s">
									<option selected disabled>Select one</option>
									<c:forEach var="subj" items="${subjectList}">
										<c:if
											test="${!teacher.getSubjects().toString().contains(subj.getName())}">
											<option value="${subj.getId()}">${subj.getName()}</option>
										</c:if>
									</c:forEach>
								</select>

								<button class="uk-button uk-button-small uk-button-secondary">Assign</button>

							</form>
						</td> --%>
						<td><a class="uk-button uk-button-link" href="${pageContext.request.contextPath}/assignments/${teacher.getId()}">Assign</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>

</html>