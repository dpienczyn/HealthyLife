<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
<!------ Include the above in your HEAD tag ---------->

<link href="http://fonts.googleapis.com/css?family=Arimo:400"
	rel="stylesheet">
<title>Product List</title>
</head>
<body>

	<nav>
	<div class="container">
		<div class="menu-bar">

			<ul>
				<li><a href="">HOME</a><i class="fa fa-angle-down"
					aria-hidden="true" id="dropdown-click-arrow"></i>

					<div class="dropdown-menu-bar">
						<ul>
							<li><a href="http://localhost:8080/quiz/register">REGISTRATION</a></li>
							<li><a href="http://localhost:8080/quiz/login">SIGN IN</a></li>
						</ul>
					</div></li>
				<li><a href="">CALCULATE</a> <i class="fa fa-angle-down"
					aria-hidden="true" id="dropdown-click-arrow"></i>

					<div class="dropdown-menu-bar">
						<ul>
							<li><a href="http://localhost:8080/quiz/product">PRODUCT</a></li>
							<li><a href="http://localhost:8080/quiz/bmi">BMI</a></li>
						</ul>
					</div></li>
				<li><a href="">ABOUT</a> <i class="fa fa-angle-down"
					aria-hidden="true" id="dropdown-click-arrow"></i></li>
			</ul>

		</div>
		<div class="mobile-menu" id="ham-bar">
			<i class="glyphicon glyphicon-menu-hamburger"></i>
		</div>
	</div>

	</nav>
	<a href="http://localhost:8080/quiz/product/newProduct" target="_blank">
		<button>My Button</button>
	</a>
	<div class="container">
		<h2>Lista Produktów</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nazwa</th>
					<th>Ilosc</th>
					<th>Opis</th>
					<th>Kalorie</th>
					<th>Kategoria</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listUserId" items="${listProduct}">
					<tr>
						<td>${listUserId.productId}</td>
						<td>${listUserId.nazwa}</td>
						<td>${listUserId.ilosc}</td>
						<td>${listUserId.opis}</td>
						<td>${listUserId.cal}</td>
						<td>${listUserId.category.nazwa }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>