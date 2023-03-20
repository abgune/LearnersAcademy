<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Subject</title>
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
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Subjects</h2>
		<a
			class="uk-button uk-button-secondary uk-border-rounded uk-align-right"
			href="${pageContext.request.contextPath}/subjects/create">New</a>

		<table class="uk-table uk-table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Class</th>
					<th>Assign class</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="subject" items="${subjectList}">

					<tr>
						<td>${subject.getId()}</td>
						<td>${subject.getName()}</td>
						<td>${subject.getClasses()}</td>
						<td>

							<form>
								<select name="class_id" id="class_id"
									class="uk-select uk-width-1-3@s">
									<option selected disabled>Select one</option>
									<c:forEach var="cls" items="${classList}">
										<c:if
											test="${!subject.getClasses().toString().contains(cls.getName())}">
											<option value="${cls.getId()}">${cls.getName()}</option>
										</c:if>
									</c:forEach>
								</select>

								<button class="uk-button uk-button-small uk-button-secondary">Assign</button>

							</form>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>

</html>