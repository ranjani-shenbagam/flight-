<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script defer
	src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
<title>Flight Search Engine</title>

</head>
<body>

	<!--###################START HERE####################-->
	<nav class="navbar navbar-expand-xl mb-3 navbar-light bg-secondary">
		<div class="container">
			<a href="/" class="navbar-brand">Flight Search Engine</a>
			<div>
				<ul class="navbar-nav">
					<li class="nav-item"><a href="/" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link">About</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Services</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<section id="login">
		<br> <br>
		<div class="container bg-light">
			<br> <br> <br>
			<h1>Create an Account</h1>
			<hr>
			<form action="register" method="post">
				<!-- TEXT FIELD GROUPS -->
				<div class="form-group">
					<label for="name">First Name</label> <input class="form-control"
						type="text" id="firstname" placeholder="Enter First Name">
				</div>
				<div class="form-group">
					<label for="name">Last Name</label> <input class="form-control"
						type="text" id="lastname" placeholder="Enter Last Name">
				</div>
				<div class="form-group">
					<label for="gender">Gender</label> <select class="form-control"
						id="gender">
						<option>Male</option>
						<option>Female</option>
						<option>Others</option>
					</select>
				</div>

				<div class="form-group">
					<label for="name">Phone Number</label> <input class="form-control"
						type="tel" id="ph" placeholder="Enter phone no" required="true">
				</div>

				<div class="form-group">
					<label for="email">Email address</label> <input
						class="form-control" type="email" id="email"
						placeholder="Enter email" name="username" required="true">
					<small class="form-text text-muted">Your email will not be
						shared</small>
				</div>

				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						id="password" class="form-control" name="password" required="true">
				</div>

				<div class="form-group">
					<label for="password2">Confirm Password</label> <input
						type="password" id="password2" class="form-control"
						required="true">
				</div>
				<br> <br> <br>
				<button type="submit" class="btn btn-primary">Register</button>
				<br> <br> <br>
			</form>
		</div>
		<br> <br>
	</section>
</body>
</html>