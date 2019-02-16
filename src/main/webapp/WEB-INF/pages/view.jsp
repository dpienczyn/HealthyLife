<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Healthy Life &mdash; Application</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700|Work+Sans:300,400,700" rel="stylesheet">
    
	<link rel="stylesheet" href="<c:url value="/resources/fonts/icomoon/style.css"/>" />
    
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datepicker.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>" />
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
	
	<link rel="stylesheet" href="<c:url value="/resources/fonts/flaticon/font/flaticon.css"/>" />
	
	<link rel="stylesheet" href="<c:url value="/resources/css/aos.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />    
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.html">Healthy Life</a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    
                   <div class="d-inline-block d-lg-none  ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu h3"></span></a></div>
                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="">
                        <a href="http://healthylifee.herokuapp.com/">Home</a>
                      </li>
                     <li class="has-children">
                        <a href="classes.html">Kalkulator</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="http://healthylifee.herokuapp.com/bmi">BMI</a></li>
                          <li><a href="http://healthylifee.herokuapp.com/calorie">Kalorie</a></li>
                          <li><a href="http://healthylifee.herokuapp.com/bmr">BMR</a></li>
                          <li class="has-children">
                            <a href="classes.html">Produkty</a>
                            <ul class="dropdown">
                              <li><a href="classes.html">Kategoria</a></li>
                              
                            </ul>
                          </li>

                        </ul>
                      </li>
                      <li><a href="events.html">Events</a></li>
                      <li><a href="about.html">About Studio</a></li>
                      <li><a href="contact.html">Contact</a></li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    
    <div class="slide-one-item home-slider owl-carousel">
      
      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h2 class="caption mb-2">Yoga for everybody</h2>
              <h1 class="">Welcome To Yogalife</h1>
              
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h2 class="caption mb-2">Enjoy With Us</h2>
              <h1 class="">Yoga &amp; Meditation</h1>
            </div>
          </div>
        </div>
      </div> 
    </div>
<c:forEach var="post" items="${lista}">
    <div class="site-block-half d-flex">
      <div class="image bg-image" style="background-image"><img src="resources/images/1.jpg" alt="Image" ></div>
      <div class="text">
        <h2 class="font-family-serif">${post.tytul} </h2>
        <span class="caption d-block text-primary pl-0 mb-4">${post.autor }</span>
        <p class="mb-5"> ${post.opis} </p>

      </div>
    </div>
</c:forEach>
    
   <div align="center">
		<form:form action="saveComment" modelAttribute="comment" method="post" enctype="multipart/form-data">
			<form:hidden path="idComment" />
			<div class="col-xs-4">
				<label for="ex3"></label> <input class="form-control" name="autor"
					id="autor" type="string" placeholder="Autor">
			</div>
	</div>
	<div class="form-group row">
		<div class="col-xs-4">
			<label for="ex3"></label> <input class="form-control" name="opis"
				id="opis" type="string" placeholder="Opis">
		</div>
	</div>
	<button type="submit" value="Save" class="btn btn-primary active">Opublikuj</button>
	</form:form>
	</div>
	
    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
        
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2>Dodaj komentarz</h2>
          </div>
        </div>
          <div class="col-md-12 col-lg-8 mb-5">
          
            
          <form:form action="saveComment" modelAttribute="comment" method="post"
			enctype="multipart/form-data">
			<form:hidden path="idComment" />
            <form action="#" class="p-5 bg-white">
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname">Autor</label>
                  <input type="string" id="fullname" name="autor" class="form-control" placeholder="Autor">
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email">Opis</label>
                  <input type="string" id="email" name="opis" class="form-control" placeholder="Opis">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Save" class="btn btn-primary pill text-white px-5 py-2">
                </div>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </div>
    
    
    
<div class="site-section block-14 bg-light">

      <div class="container">
        
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2>Komentarze</h2>
          </div>
        </div>

        <div class="nonloop-block-14 owl-carousel">
          
          <div class="p-4">
            <div class="d-flex block-testimony">
              <div class="person mr-3">
                <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded">
              </div>
              <div>
                <h2 class="h5">Katie Johnson</h2>
                <blockquote>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias accusantium qui optio, possimus necessitatibus voluptate aliquam velit nostrum tempora ipsam!&rdquo;</blockquote>
              </div>
            </div>
          </div>
          <div class="p-4">
            <div class="d-flex block-testimony">
              <div class="person mr-3">
                <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded">
              </div>
              <div>
                <h2 class="h5">Jane Mars</h2>
                <blockquote>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias accusantium qui optio, possimus necessitatibus voluptate aliquam velit nostrum tempora ipsam!&rdquo;</blockquote>
              </div>
            </div>
          </div>
          <div class="p-4">
            <div class="d-flex block-testimony">
              <div class="person mr-3">
                <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded">
              </div>
              <div>
                <h2 class="h5">Shane Holmes</h2>
                <blockquote>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias accusantium qui optio, possimus necessitatibus voluptate aliquam velit nostrum tempora ipsam!&rdquo;</blockquote>
              </div>
            </div>
          </div>
          <div class="p-4">
            <div class="d-flex block-testimony">
              <div class="person mr-3">
                <img src="images/person_4.jpg" alt="Image" class="img-fluid rounded">
              </div>
              <div>
                <h2 class="h5">Mark Johnson</h2>
                <blockquote>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias accusantium qui optio, possimus necessitatibus voluptate aliquam velit nostrum tempora ipsam!&rdquo;</blockquote>
              </div>
            </div>
          </div>

        </div>

      </div>
      
    </div>
    
    
    
 

    
    
    <div class="site-section">
      <div class="">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Our Gallery</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-md-6 col-lg-3">
            <a href="images/img_1.jpg" class="image-popup img-opacity"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_2.jpg" class="image-popup img-opacity"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_3.jpg" class="image-popup img-opacity"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_4.jpg" class="image-popup img-opacity"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>

          <div class="col-md-6 col-lg-3">
            <a href="images/img_4.jpg" class="image-popup img-opacity"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_5.jpg" class="image-popup img-opacity"><img src="images/img_5.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_6.jpg" class="image-popup img-opacity"><img src="images/img_6.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_7.jpg" class="image-popup img-opacity"><img src="images/img_7.jpg" alt="Image" class="img-fluid"></a>
          </div>

          <div class="col-md-6 col-lg-3">
            <a href="images/img_1.jpg" class="image-popup img-opacity"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_2.jpg" class="image-popup img-opacity"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_3.jpg" class="image-popup img-opacity"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="images/img_4.jpg" class="image-popup img-opacity"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>

        </div>
      </div>
    </div>
    
   <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Yoga Features</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-001-stone display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Peace of Mind</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde temporibus</p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-002-lotus display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Mindfullness</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde temporibus</p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-003-meditation display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Meditation</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde temporibus</p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-004-carpet display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Yoga Carpet</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde temporibus</p>
            </div>
          </div>


        </div>
      </div>
    </div>

    


    
    

    <!-- <div class="py-5 quick-contact-info">
      <div class="container">
        <div class="row">
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-room text-white h2 d-block"></span>
              <h2>Location</h2>
              <p class="mb-0">New York - 2398 <br>  10 Hadson Carl Street</p>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-clock-o text-white h2 d-block"></span>
              <h2>Service Times</h2>
              <p class="mb-0">Wednesdays at 6:30PM - 7:30PM <br>
              Fridays at Sunset - 7:30PM <br>
              Saturdays at 8:00AM - Sunset</p>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-comments text-white h2 d-block"></span>
              <h2>Get In Touch</h2>
              <p class="mb-0">Email: info@yoursite.com <br>
              Phone: (123) 3240-345-9348 </p>
            </div>
          </div>
        </div>
      </div>
    </div> -->

    
    <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat quos rem ullam, placeat amet.</p>
            <p><a href="#" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
                    <li><a href="#">About</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">Approach</a></li>
                    <li><a href="#">Events</a></li>
                    <li><a href="#">Classes</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Ministries</h3>
                  <ul class="list-unstyled">
                    <li><a href="#">Yoga for Health</a></li>
                    <li><a href="#">Yoga for Resilience</a></li>
                    <li><a href="#">Yoga Class</a></li>
                    <li><a href="#">Meditation</a></li>
                    <li><a href="#">Mind Balance</a></li>
                  </ul>
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="#" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-primary" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="resources/js/jquery-3.3.1.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/jquery.countdown.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/bootstrap-datepicker.min.js"></script>
  <script src="resources/js/aos.js"></script>

  
  <script src="resources/js/mediaelement-and-player.min.js"></script>

  <script src="resources/js/main.js"></script>
    

  <script>
      document.addEventListener('DOMContentLoaded', function() {
                var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;

                for (var i = 0; i < total; i++) {
                    new MediaElementPlayer(mediaElements[i], {
                        pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
                        shimScriptAccess: 'always',
                        success: function () {
                            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
                            for (var j = 0; j < targetTotal; j++) {
                                target[j].style.visibility = 'visible';
                            }
                  }
                });
                }
            });
    </script>

  </body>
</html>


	<div align="center">
		<form:form action="saveComment" modelAttribute="comment" method="post"
			enctype="multipart/form-data">
			<form:hidden path="idComment" />
			<div class="col-xs-4">
				<label for="ex3"></label> <input class="form-control" name="autor"
					id="autor" type="string" placeholder="Autor">
			</div>
	</div>
	<div class="form-group row">
		<div class="col-xs-4">
			<label for="ex3"></label> <input class="form-control" name="opis"
				id="opis" type="string" placeholder="Opis">
		</div>
	</div>
	<button type="submit" value="Save" class="btn btn-primary active">Opublikuj</button>
	</form:form>
	</div>

	<c:forEach var="comment" items="${comments}">

		<div class="container">
			<div class="col-md-12">
				<h1>${comment.autor }</h1>


				<div>
					<span class="badge">${comment.opis }</span>
					<div class="pull-right">
						<span class="label label-default">alice</span> <span
							class="label label-primary">story</span> <span
							class="label label-success">blog</span> <span
							class="label label-info">personal</span> <span
							class="label label-warning">Warning</span> <span
							class="label label-danger">Danger</span>
					</div>
				</div>
				<hr>
			</div>
		</div>
	</c:forEach>
	<hr>


	</div>
</body>
</html>