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
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Class and Subject</h2>

		<form class="uk-grid-small uk-margin-large-top uk-grid"
			action="${pageContext.request.contextPath}/assignments" method="POST">

			<input hidden="true" name="teacher_id" value="${teacherId}" />
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="subject_id">Subject</label> <select
					name="subject_id" id="subject_id" class="uk-select">
					<option selected disabled>Select one</option>
					<c:forEach var="subj" items="${subjectList}">
						<option value=${subj.getId() }>${subj.getName()}</option>
					</c:forEach>
				</select>
			</div>
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="class_id">Class</label> <select
					name="class_id" id="class_id" class="uk-select">
					<option selected disabled>Select one</option>
					<c:forEach var="cls" items="${classList}">
						<option value=${cls.getId() }>${cls.getName()}</option>
					</c:forEach>
				</select>
			</div>

			<div class="uk-width-1-1@s uk-margin-top">
				<button class="uk-button uk-button-secondary">Register</button>
			</div>
		</form>
	</div>
</body>

</html>