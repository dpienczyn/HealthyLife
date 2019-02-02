<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/view.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/comment.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/button.css"/>" />
<!------ Include the above in your HEAD tag ---------->
<title>New/Edit Product</title>
</head>
<link href="http://fonts.googleapis.com/css?family=Arimo:400"
	rel="stylesheet">
<body>
	<header> <jsp:include page="menu.jsp" /> </header>

	<c:forEach var="post" items="${lista}">

		<div class="container">
			<div class="col-md-12">
				<h1>${post.tytul }</h1>

				<img src="<c:url value="/resources/images/1.jpg"/>" alt="image"
					class="img-responsive" />
				<div>
					<span class="badge">${post.autor }</span>

					<p>${post.opis}</p>
				</div>
				<hr>
			</div>
		</div>
	</c:forEach>

	<button type="submit" value="Save" class="btn btn-primary active">
		<a
			href="${pageContext.request.contextPath}/posts/${postid}/comments/newComment">Dodaj
			Komentarz</a>
	</button>

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="page-header">
					<h1>
						<small class="pull-right">45 comments</small> Comments
					</h1>
				</div>
				<c:forEach var="comment" items="${comments}">
					<div class="comments-list">
						<div class="media">
							<p class="pull-right">
								<small>5 days ago</small>
							</p>
							<a class="media-left" href="#"> <img
								src="http://lorempixel.com/40/40/people/1/">
							</a>
							<div class="media-body">

								<h4 class="media-heading user_name">${comment.autor }</h4>
								${comment.opis }

								<p>
									<small><a href="">Like</a> - <a href="">Share</a></small>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<hr>
</body>
</html>