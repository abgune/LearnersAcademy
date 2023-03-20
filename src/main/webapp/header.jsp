<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<nav class="uk-navbar-container" uk-navbar>
		<div class="uk-navbar-left uk-margin-left uk-margin-right">

			<ul class="uk-navbar-nav">
				<li class="uk-active"><a href="#">Home</a></li>

				<li><a href="${pageContext.request.contextPath}/teachers">Teacher</a></li>
				<li><a href="${pageContext.request.contextPath}/classes">Class</a></li>
				<li><a href="${pageContext.request.contextPath}/subjects">Subject</a></li>
				<li><a href="${pageContext.request.contextPath}/students">Students</a></li>
				<li><a href="${pageContext.request.contextPath}/login">Logout</a></li>

			</ul>

		</div>
	</nav>

</body>
</html>