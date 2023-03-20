<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h2 class="uk-text-bolder uk-heading-bullet uk-text-mute">Teacher
			Registration</h2>

		<form class="uk-grid-small uk-margin-large-top uk-grid"
			action="${pageContext.request.contextPath}/teachers" method="POST">

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
				<label class="uk-form-label" for="training_area">Training
					area</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="training_area" name="training_area"
						type="text" placeholder="Training area">
				</div>
			</div>
			<div class="uk-width-1-3@s">
				<label class="uk-form-label" for="dob">Date of Birth</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="dob" name="dob" type="date"
						placeholder="Date of Birth">
				</div>
			</div>
			<div class="uk-width-1-1@s uk-margin-top">
				<button class="uk-button uk-button-secondary">Register</button>
			</div>
		</form>
	</div>
</body>

</html>