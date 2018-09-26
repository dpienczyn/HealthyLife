<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
<link rel="stylesheet" href="<c:url value="/resources/css/newPost.css"/>" />
<!------ Include the above in your HEAD tag ---------->
<title>Nowy Post</title>
</head>
<link href="http://fonts.googleapis.com/css?family=Arimo:400" rel="stylesheet">
<body>
<header>
        <jsp:include page="menu.jsp"/>
    </header>
<section>
<div class="container">
<div class="row">
<div class="col-md-8 col-md-offset-2 text-center">
<h2 class="text-uppercase">Nowy Post<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAVNSURBVGhD7ZptTFtVGMd5XXAkjgGTMVBet7n4gjqVbCYSnSyEvkxMyEz8YPaFmJj4RaN+4ytDNlqgtAXa0pYOel8YlN4L2z4YNb4savbBxJgZ46ZuM5otJrqJLtv1Od0B2/oAbe85l0n6T34htKe3/3/Py33OaXOyyiqrrLIySOYF6cGmKa9I/924evHMdJlZkXpMivhHiaf/On14Y6nzjLDFMi++BEEFsyrdsKiS9rjg0/Kdvbdpk/+vur5wF5oW5CaLKr5qVsR+4FOLIt4kIZeAx7Ti0eNaznCPtifk3ElfevfLNBeuMqviQYsivQlBvBDsS+jBv+LDYTSFvbGwhLqQ8xV6ubtL7VGpxqoKL5Neg4AfgfFryUFSAeauds9I33LgB0LOHvoW6ysYko9CsLehx2bA6JVk45my68TIclhClX/oJH1L43VICT8CQY9BL36PmdXLc7OTWp7zaELgCt/A5/TtjVF3d3cerJ6HY4sLYpIlZV57QljCNp/9PLXCXyZV7oAe/Qozx5om4d+FKp5Sj+0ytcNP5kionNwTMWM8eD4yqRW4etHA944d/43a4iOzKj8Ft5KfMWM8MKmiVuKxoWEJm0f6Fqk19oKgB6Bnf8eM8aIx5EaDLlHk7rtJ7bGVVRGfTKUoYMk+OajlIiHjKXT13qIW2YkU7LA4XcBM8eKFuSltk/s9NGQ8BTzqaRjGMmaKF+2KoG3x9KMBk2EeOFbrIqZ4Uh1woOEwmAcmBT1mihcPTY2hwVYin1RerGRR5FbMFC/2TQfWXKSSiZWarARzdxIzxoOWmRNkxUVDrUah8yibId0pCJtgZb6OmWNNa2RKK4rb8qUDs/uwaSH8NGaONW1RgZSHaJhUKB7tu0Et65NZEY5gBllCysZy7wAaJFVKxvqvUsv6BMP5HcwkS2DzjoZIh3Kf/TtqWZ+gjHwXM8mKhonVa+RU2e4bPEst6xPPIb076ZhGD9XBIT+1rE/mefkJzKxe0i0s1qJuwvU6taxTmpZrVsQfMNOZ8pjgQ03roWZydA91rF8s5/FecTztKmotmO+FW08FilmcQDbLAS1vOPG0kQVlHvtFapWdLIr0jJ6Nf7Ps/8/RKiuqA8MCtclW5HQS6uq/sUCrwTMsoTHsbqEW2csalZ6F3v4FC4YRG8YcwxaPHPuTWuOnjlPyfansoHiHJVT6h96ntviLHNVaFFGBuX1rPcLmwvUbQsN7qR3jZIpK9RZVnoKhftuosARYnX+iFoyVNSo2L+2Zobcz2sBnQn3IcYRaME6WhXBj8iJW5U/98C1Tyrz2C9SCcbozlKWL8WEJ+6eDqElWkAO7hoB7P7VhjExz0k5YsH5MDkuAqmy2xGO7ipllwf0Bh4faMEbW+fBuCHUJDatKn5kjkc11IXcnj4Wr3Mtoo5+qVvvWEO7N37ap4W20aQ7M5WnMdKZsHbP9WnOyv4Renr9MqtQOoVb41lA836bK1bTpsirGB89h5tOl1Gu7tCvkLqeX5S8I1QVzNuF3UkvAh/CN9fTMDto0UZqWV+kb/CDTLSGZFjsCQwvkOvSKfEXOpWG+urGgdxC/7piXK2nzFVU74XgL6t5FLBQG+YC2emxXaoOug/QS/EV+6geL0Md4UECRzpK6mjZfUzU+X1FdwNFb6rFfjn35hYQsHulb3D4+8Eld0GWiLzNOEMiBBgWg16PkYIA2TVst3d0F9UHXgXq/67XaCdcbwOGHZ0cr6NPrIwh2LjkoxQlDPZ822ziCYEMJQRVxEf520ac3nkgBAStwEEJeg+H94aGoaGw5l1VWWWWVVU7OP09VeOsqgk/gAAAAAElFTkSuQmCC"></h2>
<div class="divider"></div>
<p>Wprowadź dane posta.</p>
</div>
</div>
</div>
</section>

<div align="center">
       <form:form action="savePost" method="post" commandName="post">
        <form:hidden path="postid"/>
        <div class="form-group row">
<div class="col-xs-4">
    <label for="ex3"></label>
    <input class="form-control" name="autor" id="ex3" type="string" placeholder="Autor">
  </div>
  </div>
  <div class="form-group row">
  <div class="col-xs-4">
    <label for="ex3"></label>
    <input class="form-control" name="tytul" id="ex3" type="string" placeholder="Tytuł">
  </div>
</div>
<div class="form-group row">
<div class="col-xs-4">
    <label for="ex3"></label>
    <textarea class="form-control" name="opis" type="text" rows="5" id="opis" placeholder="Opis"></textarea>
  </div>
  </div>
  </div>
<button type="submit" value="Save" class="btn btn-primary active">Opublikuj</button>
        </form:form>
    </div>
</body>
</html>