<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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

	<div class="uk-container">
		<form action="${pageContext.request.contextPath}/loginServlet" method="POST"
			class="uk-margin-large-top uk-form-stacked">
			<h2 class="uk-text-bolder">Learner's Academy | Enter Admin Details:</h2>

			<p class="uk-margin-large-top"></p>
			<div class="uk-margin uk-width-1-2">
				<label class="uk-form-label" for="username">Username</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="username" name="username" type="text"
						placeholder="Username">
				</div>
			</div>


			<div class="uk-margin uk-width-1-2">
				<label class="uk-form-label" for="password">Password</label>
				<div class="uk-form-controls">
					<input class="uk-input" id="password" name="password"
						type="password" placeholder="Passord">
				</div>
			</div>

			<div class="uk-margin uk-width-1-2">
				<button type="submit"
					class="uk-button uk-button-primary uk-align-right">SignIn</button>
			</div>
		</form>
	</div>
</body>

</html>