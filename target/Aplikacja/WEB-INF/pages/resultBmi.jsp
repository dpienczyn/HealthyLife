
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
  
<div class="site-block-half d-flex" style="padding-top: 50px;" style="padding-left: 50px;">

      <div class="text">
        <h2 class="font-family-serif">Twój wynik wynosi: ${result}</h2>
        <span class="caption d-block text-primary pl-0 mb-4">Wskaźnik BMI</span>
        <p class="mb-5"></p>
        <p><a href="http://healthylifee.herokuapp.com/" class="btn btn-primary pill px-4 py-3 text-white">Powrót do strony głównej</a></p>

      </div>
    </div>

    <div class="container">
  <h2>Przedziały wskaźnika BMI</h2>          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Wartość</th>
        <th>Co oznacza?</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>BMI < 18,5</td>
        <td>niedowaga</td>
      </tr>
      <tr>
        <td>18,5 ≤ BMI ≤ 24,9</td>
        <td>waga prawidłowa</td>
      </tr>
      <tr>
        <td>25 ≤ BMI ≤ 29,9</td>
        <td>nadwaga</td>
      </tr>
      <tr>
        <td>BMI > 30</td>
        <td>otyłość</td>
      </tr>
    </tbody>
  </table>
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
            <h3 class="footer-heading mb-4 text-white"></h3>
            <p>Jakie są zasady zdrowego odżywiania według nowoczesnej dietetyki? Odżywiaj się regularnie, wybieraj produkty jak najmniej przetworzone, jedz jak najwięcej warzyw, a owoce w dwóch porcjach dziennie, ogranicz spożycie węglowodanów - to najważniejsze zalecenia dietetyków dotyczące zdrowego żywienia.</p>
            <p><a href="https://www.poradnikzdrowie.pl/diety-i-zywienie/zdrowe-odzywianie/zdrowe-odzywianie-10-najwazniejszych-zasad-aa-BxiR-4hyV-P2Ek.html" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Menu</h3>
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
                <h3 class="footer-heading mb-4 text-white">Strony które mogą Cię zainteresować</h3>
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