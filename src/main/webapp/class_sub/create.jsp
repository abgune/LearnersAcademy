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
	<div
		class="uk-container uk-margin-left uk-margin-right uk-margin-large-top uk-grid">
		<div class="uk-width-1-2@s">
			<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Class
				Registration</h2>

			<form class="uk-grid-small uk-margin-large-top uk-grid"
				action="${pageContext.request.contextPath}/classes" method="POST">

				<div class="uk-margin uk-width-1-1">
					<label class="uk-form-label" for="name">Name</label>
					<div class="uk-form-controls">
						<input class="uk-input" id="name" name="name" type="text"
							placeholder="Name">
					</div>
				</div>

				<%-- <div class="uk-margin uk-width-1-1">
					<label class="uk-form-label" for="subject_id">Subject</label> 
					<select name="subject_id"
						class="uk-select">
						<option select disable>Select one</option>
						<c:forEach var="subj" items="${subjectList}">
							<option value=${subj.getId() }>${subj.getName()}</option>
						</c:forEach>
					</select>
				</div> --%>
				<div class="uk-width-1-1@s uk-margin-top">
					<button class="uk-button uk-button-secondary">Save</button>
				</div>
			</form>
		</div>
		<%-- <div class="uk-width-1-2@s">
			<h4 class="uk-text-bolder uk-heading-bullet uk-text-mute">
				All Classes
				</h2>
				<table class="uk-table uk-table-striped ">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Is Available</th>
							<th>Details</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cls" items="${classList}">
							<tr>
								<td>${cls.getId()}</td>
								<td>${cls.getName()}</td>
								<td>${cls.getIsActive() ? 'True': 'False'}</td>
								<td><a class="uk-button uk-button-link" href="">Open</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div> --%>
	</div>
</body>

</html>