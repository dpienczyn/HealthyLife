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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/post.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/button.css"/>" />
<!------ Include the above in your HEAD tag ---------->
<title>New/Edit Product</title>
</head>
<link href="http://fonts.googleapis.com/css?family=Arimo:400" rel="stylesheet">
<body>
<header>
        <jsp:include page="menu.jsp"/>
    </header>

<section id="blog">
      <div class="container">
	  
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 text-center">  
                <h2><span class="ion-minus"></span>Blog Posts<span class="ion-minus"></span></h2>
                <p>Zdrowe odżywianie staje się coraz popularniejsze. Rośnie liczba osób, które chcą odżywiać się prawidłowo. Zdrowe żywienie odgrywa kluczową rolę w utrzymaniu zdrowia, a tym samym determinuje długość życia. Złe nawyki żywieniowe przyczyniają się do wielu chorób cywilizacyjnych – otyłości, cukrzycy typu 2, chorób układu krążenia oraz nowotworów. </p><br>
            </div> 
        </div>  
              
        <div class="row">
                <c:forEach var="post" items="${listPost}" varStatus="itr">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
                    <div class="blog column text-center">
                        <img src="https://images.pexels.com/photos/129441/pexels-photo-129441.jpeg?h=350&auto=compress&cs=tinysrgb" alt="" width="100%">
                        <h4>${post.tytul }</h4>
                        <p>${post.autor }</p>
                        <a href="${pageContext.request.contextPath}/posts/${post.postid}">Read More</a>
                    </div>
                </div>
              </c:forEach>
        </div>  <!-- row -->
</section>

<c:forEach var="post" items="${comment}">

<div class="container">
<div class="col-md-12">
    <h1>${post.autor }</h1>
    
    
    <div>
<span class="badge">${post.opis }</span><div class="pull-right"><span class="label label-default">alice</span> <span class="label label-primary">story</span> <span class="label label-success">blog</span> <span class="label label-info">personal</span> <span class="label label-warning">Warning</span>
<span class="label label-danger">Danger</span></div>         
     </div>
    <hr>
    </div>
    </div>
    </c:forEach>
    <hr>

</body>
</html>