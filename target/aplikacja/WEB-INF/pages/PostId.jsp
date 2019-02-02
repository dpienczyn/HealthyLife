<%@page pageEncoding="UTF-8" contentType="textjhtml ; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="textjhtml ;charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Produkt</title>
</head>
<body>
	<section>
	<div class="jumbotron">
		<div class="container">
			<hl>Produkt</hl>
		</div>
	</div>
	</section>
	<section class="container">
	<div class="row">
		<div class="col-md-5">
			<h3>${post.autor}</h3>
			<p>${post.tytul}</p>
			<p>
				<strong>Kod produktu: </strong> <span class="label label-warning">${post.postid}</span>
			</p>
			<p>
				<strong>Producent</strong>: ${post.opis}
			</p>
			<p>
				<strong>Kategoria</strong>:
			</p>
			<p>
				<strong>Dostępna liczba sztuk .. </strong>:
			</p>
			<h4></h4>
			<p>
				<a href="," class="btn btn-warning btn-large"> <span
					class="glyphicon-shopping-cart glyphicon"></span> Zamów teraz <la>
			</p>
		</div>
	</div>
	</section>

</body>
</html>