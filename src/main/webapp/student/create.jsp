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

		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Student
			Registration</h2>
		<a
			class="uk-button uk-button-secondary uk-border-rounded uk-align-right"
			href="${pageContext.request.contextPath}/students">Students</a>

		<form class="uk-grid-small uk-margin-large-top uk-grid"
			action="${pageContext.request.contextPath}/students" method="POST">

			<div class="uk-margin uk-width-1-3">
				<label class="uk-form-label" for="name">Name</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="name" name="name" type="text"
						placeholder="Name">
				</div>
			</div>
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="surname">Surname</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="surname" name="surname" type="text"
						placeholder="Surname">
				</div>
			</div>
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="identity">Identity number</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="identity" name="identity" type="text"
						placeholder="Identity Number">
				</div>
			</div>
			<div class="uk-width-1-4@s">
				<label class="uk-form-label" for="dob">Date of Birth</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="dob" name="dob" type="date"
						placeholder="Date of Birth">
				</div>
			</div>
			<div class="uk-width-1-4@s">
				<label class="uk-form-label" for="dob">Address</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="address" name="address" type="text"
						placeholder="Address">
				</div>
			</div>
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="class_id">Class</label> <select
					name="class_id" id="class_id" class="uk-select">
					<option select disable>Select one</option>
					<c:forEach var="cls" items="${classList}">
						<option value=${cls.getId() }>${cls.getName()}</option>
					</c:forEach>
				</select>
			</div>
			<div class="uk-width-1-1@s uk-margin-top">
				<p></p>
				<button class="uk-button uk-button-secondary">Register</button>
			</div>
		</form>
	</div>
</body>

</html>