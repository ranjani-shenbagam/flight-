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

		<div class="container">
			<br> <br> <br>
			<table class="table table-bordered">
				<thead>
					<tr class="table-secondary">
						<th>Name</th>
						<th>From</th>
						<th>To</th>
						<th>Date</th>
						<th>Type</th>
						<th>Duration(In Minutes)</th>
						<th>No of Stops</th>
						<th>Offers</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="f">
						<tr>
							<td>${f.f_name}</td>
							<td>${f.f_from}</td>
							<td>${f.f_to}</td>
							<td>${f.f_date}</td>


							<td>${f.f_type}</td>
							<td>${f.f_dur}</td>

							<td>${f.f_stops }</td>
							<td>${f.f_offers}</td>

							<td>${f.f_price }</td>
							<!--  -->
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br> <br> <a class="btn btn-primary" href="/book-item">Book
				Now</a>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
	</section>
</body>
</html>