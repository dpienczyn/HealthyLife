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
<!------ Include the above in your HEAD tag ---------->
<title>New/Edit Product</title>
</head>
<link href="http://fonts.googleapis.com/css?family=Arimo:400" rel="stylesheet">
<body>
<header>
        <jsp:include page="menu.jsp"/>
    </header>
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://placehold.it/1200x400/16a085/ffffff&text=Healthy Life">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Jakie są zasady zdrowego odżywiania według nowoczesnej dietetyki? Odżywiaj się regularnie, wybieraj produkty jak najmniej przetworzone, jedz jak najwięcej warzyw, a owoce w dwóch porcjach dziennie, ogranicz spożycie węglowodanów - to najważniejsze zalecenia dietetyków dotyczące zdrowego żywienia.
</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/e67e22/ffffff&text=Projects">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Jakie są zasady zdrowego odżywiania według nowoczesnej dietetyki? Odżywiaj się regularnie, wybieraj produkty jak najmniej przetworzone, jedz jak najwięcej warzyw, a owoce w dwóch porcjach dziennie, ogranicz spożycie węglowodanów - to najważniejsze zalecenia dietetyków dotyczące zdrowego żywienia.</p>

                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/2980b9/ffffff&text=Portfolio">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://placehold.it/1200x400/8e44ad/ffffff&text=Services">
                <div class="carousel-caption">
                    <h3>
                        Headline</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem
                ipsum dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum
                dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum
                dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum
                dolor sit</small></a></li>
        </ul>
    </div>
    <!-- End Carousel -->
</div>
<div>
<center><a href="https://github.com/dpienczyn"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAMcSURBVGhD7dnL6w97HMfxH3JyK51yS0kuOR33y4KNLGysLSwUisS5KMXCdeVa7vkDzokskAUhQkrChnQ653A6IbnktrBC5PJ81m9q+vb+Xma+M7/fr8yrHvXr28z7/ZnvzHfmM59fR5UqVap81+mNGfgFh3AClzr590GsxjS4bY+LAzuM1/jaopdwn6no9kzBOXxBNNhWuO9ZTEKXpy924xOiweVhre2wdpdkBG4iGkwRbmA4Ss1YPEA0gCL9jzEoJZ4JG0SNy2CvoSg0P6DMy6me6yj0N7MTtU0+YCDGYT0eo3abZtxnHbxkB+EjarfZgULiLTa6O11FOv2xGQ/h7XQbfsPiTv7tZ96u3cZt3Seda6jt48FNRNuxcW1xHUXROYao1xm0FZ/Y9R52R1B0/HKiXo7BKyN3nEJEhXUXRecvRL3k3C1XnNS9QlRUuQs3iDWjXnqBXsic6YgK6gn6oehY8yminso1wfwVUTFtRFnZhKinViFzGp3mWSgrsxH11AFkzilExTQMZcUJY9RTJ5E5FxEV0xCUFedXUU9dQOacR1RMP6Gs/Iyop3w4Z86fiIppPsrKAkQ99QcyZx+iYnISWVZ2IeqpvciclYiK6R+UsQrSB/8h6qkVyJwJiIollqHoLEfUKzEeufIcUUG9RVsTuZo4k7Bm1EvPkDuNfidyHWsh2s0ivEHUI7EHueOp/Iyk2H6swe3UZ/KVdCmyrH6MhJfSLaRrRRyDb5FtxZeapKBvdr6t+R7tEmi6mXxveIR5qJe5aDQxjDjLaDuelfdIino5uVQzAP92fpbmN9wsrl3V7lePvds+G0m2Il38OIwHlL7MvAR+R7NsQLpeI77bFxaXg64gKe4lNBnGlx3vOHPQ6jrUEqQHW4897V1oBuM+kiZ38CPyxFWV9IAjvvbas5R4Kd1D0swf7Vp4RkZhJlyRbJZmB/I3RqPUeBYuIxqAHGSzNDoQa+c905nj7XcL3qF2IHkPxFrW7LJ/K6TjculppB+aWQ/Efa1hrW6Pg3CK7RO+lQH5XHBbp0A94gCqVKlSpUqOdHR8A5xOVt1lrtEhAAAAAElFTkSuQmCC"></a></center>
</div>
</body>
</html>