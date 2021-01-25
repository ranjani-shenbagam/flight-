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
	background-image: url(49.jpg);
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
	<nav class="navbar navbar-expand-xl mb-3 navbar-light bg-secondary">
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


	<section id="login">
		<div class="bg">

			<div class="col-lg-2"></div>
			<div class="col-md-4">
				<br> <br> <br>
				<div class="container bg-light">
					<br> <br>
					<form action="search" method="post">

						<div class="form-group">
							<label for="from">From</label>
							<div>
								<input type="text" class="form-control" placeholder="From"
									name="from" required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="to">To</label>
							<div>
								<input type="text" class="form-control" placeholder="To"
									name="to" required="true" />
							</div>
						</div>
						<div class="form-group">
							<label for="date">Date of Journey</label>
							<div>
								<input type="date" class="form-control" required="true"
									name="date" />
							</div>
							<br>
						</div>
						<div class="form-group">
							<div>
								<button type="submit" class="btn btn-success">Search</button>
							</div>
						</div>
						<br>
					</form>
				</div>
			</div>

		</div>
		<br> <br> <br>
	</section>
</body>
</html>