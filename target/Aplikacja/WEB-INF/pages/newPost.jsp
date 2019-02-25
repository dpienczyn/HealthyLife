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
                            <a href="http://healthylifee.herokuapp.com/product">Produkt</a>
                            <ul class="dropdown">
                              <li><a href="http://healthylifee.herokuapp.com/categories">Kategoria</a></li>
                              
                            </ul>
                          </li>

                        </ul>
                      </li>
                      <li class="has-children">
                        <a href="classes.html">Blog</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="http://healthylifee.herokuapp.com/newPost">Nowy Post</a></li>
                          <li class="has-children">
                            <a href="classes.html">Produkt</a>
                            <ul class="dropdown">
                              <li><a href="classes.html">Kategoria</a></li>
                              
                            </ul>
                          </li>

                        </ul>
                      </li>
                      <li class="active"><a href="http://healthylifee.herokuapp.com/kontakt">Kontakt</a></li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
      
      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h2 class="caption mb-2">Dodaj nowy artykuł</h2>
              <h1 class="">Post</h1>
              
            </div>
          </div>
        </div>
      </div>  

      

    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8 mb-5">
          
            
         <form:form action="savePost" method="post" commandName="post">
         <form:hidden path="postid" />
            <form action="#" class="p-5 bg-white">
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname">Autor</label>
                  <input type="string" id="fullname" name="autor" class="form-control" placeholder="Autor">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email">Tytuł</label>
                  <input type="string" id="email" name="tytul" class="form-control" placeholder="Tytuł">
                </div>
              </div>
              <div class="row form-group mb-4">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="message">Opis</label> 
                  <textarea name="opis" type="string" id="message" cols="30" rows="5" class="form-control" placeholder="Wpisz swój tekst.."></textarea>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Dodaj" class="btn btn-primary pill text-white px-5 py-2">
                </div>
              </div>

  
            </form:form>
          </div>
        </div>
      </div>
    </div>
    
    

    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Kilka zasad zdrowego odzywiania</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-001-stone display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Odżywiaj się regularnie</h2>
              <p></p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-002-lotus display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Spożywaj dużo warzyw i owoców</h2>
              <p></p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-003-meditation display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Ogranicz spożycie węglowodanów, zwiększ spożycie tłuszczu</h2>
              <p></p>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center item">
              <span class="flaticon-004-carpet display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Nie pij słodkich napojów i ogranicz soki</h2>
              <p></p>
            </div>
          </div>


        </div>
      </div>
    </div>
    
    
    

    
       <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Jakie są zasady zdrowego odżywiania według nowoczesnej dietetyki? Odżywiaj się regularnie, wybieraj produkty jak najmniej przetworzone, jedz jak najwięcej warzyw, a owoce w dwóch porcjach dziennie, ogranicz spożycie węglowodanów - to najważniejsze zalecenia dietetyków dotyczące zdrowego żywienia.</p>
            <p><a href="https://www.poradnikzdrowie.pl/diety-i-zywienie/zdrowe-odzywianie/zdrowe-odzywianie-10-najwazniejszych-zasad-aa-BxiR-4hyV-P2Ek.html" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
                    <li><a href="http://healthylifee.herokuapp.com/">Blog</a></li>
                    <li><a href="#http://healthylifee.herokuapp.com/product">Produkty</a></li>
                    <li><a href="http://healthylifee.herokuapp.com/bmi">BMI</a></li>
                    <li><a href="http://healthylifee.herokuapp.com/bmr">BMR</a></li>
                    <li><a href="http://healthylifee.herokuapp.com/calorie">Kalorie</a></li>
                    <li><a href="http://healthylifee.herokuapp.com/kontakt">Kontakt</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Pages</h3>
                  <ul class="list-unstyled">
                    <li><a href="https://www.poradnikzdrowie.pl/diety-i-zywienie/diety/">Dieta</a></li>
                    <li><a href="https://www.poradnikzdrowie.pl/zdrowie/">Zdrowie</a></li>
                    <li><a href="https://polki.pl/dieta-i-fitness/zdrowe-odzywianie,sport-i-dieta-poradnik,10374376,artykul.html">Sport</a></li>
                    <li><a href="https://sante.pl/produkty/">Produkty</a></li>
                    <li><a href="https://sante.pl/przepisy/">Przepisy</a></li>
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
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-primary" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Dominika Pienczyn</a>
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