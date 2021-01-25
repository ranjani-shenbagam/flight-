<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
.bg {
	background-image: url(200.jpg);
	background-color: #cccccc;
	height: 600px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<!--###################START HERE####################-->
	<nav class="navbar navbar-expand-xl mb-3 navbar-light bg-light">
		<div class="container">
			<a href="#" class="navbar-brand">Flight Search Engine</a>
			<div>
				<ul class="navbar-nav">
					<li class="nav-item"><a href="#" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link">About</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Services</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link">Contact</a>
					</li>
				</ul>

			</div>
		</div>
	</nav>
	<c:if test="${error>0}">
		<div class="alert alert-danger alert-dismissible fade show"
			role="alert">
			<strong>Invalid Login...!!!</strong>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

	</c:if>


	<section id="login">
		<div class="bg">
			<div class="container ">
				<div class="row">
					<div class="col-md-4">
						<br> <br> <br> <br> <br>
						<div class="container bg-light">
							<br> <br>
							<form modelAttribute="login" action="submitlogin" method="POST">

								<div class="form-group">
									<label for="userName">UserName</label> <input
										class="form-control" type="text" path="userName" id="userName"
										name="userName" placeholder="email@example.com">
								</div>
								<div class="form-group">
									<label for="password">Password </label> <input
										class="form-control" type="password" path="password"
										id="password" name="password" placeholder="Password">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="dropdownCheck2"> <label class="form-check-label"
										for="dropdownCheck2"> Remember me </label>
								</div>
								<br>
								<div class="form-group">
									<div>
										<button type="submit" class="btn btn-outline-success mr-3">Login</button>

										<a class="btn btn-outline-success" href="/newuser"
											role="button">Sign up</a>
									</div>
								</div>
								<br>
							</form>
						</div>
					</div>
					<div class="col-lg-4"></div>
					<div class="col-lg-4 "></div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>