<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pl">
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
        <h2 class="font-family-serif">Twóje zapotrzebowanie kaloryczne wynosi: ${ wagaKobieta} ${ wagaMezczyzna}</h2>
        <span class="caption d-block text-primary pl-0 mb-4">BMR</span>
        <p class="mb-5">Co to jest kalkulator BMR?
To kalkulator zapotrzebowania kalorycznego człowieka, które jest potrzebne aby utrzymywać podstawowe funkcje organizmu zachodzące w układzie nerwowym, wątrobie, nerkach, sercu i pozostałych narządach Twojego ciała.

Bieganie, jazda na rowerze, orbitrek, rower stacjonarny zwiększają zapotrzebowanie kaloryczne przez większą ilość spalania kalorii przez co Twój wydatek energetyczny może mocno się zwiększyć.

Musisz wiedzieć o tym, że Twój organizm spala kalorie z różnym natężeniem, dlatego tak ważne jest aby dobrze
dopasować wszystkie proporcje.

Dzieci i dorośli, a także kobiety w ciąży mają inne dzienne spalanie kalorii i inne dzienne zapotrzebowanie kalorii dzieje się tak m. in. ze względu na wiek, wzrost oraz wagę.

Nasz kalkulator kalorii, obliczy jakie wartości to podstawowa przemiana materii(BMR), a jakie wartości to całkowita przemiana materii(CPM).

Dzięki czemu możesz szybko schudnąć lub szybko przytyć – w zależności od tego jaki jest Twój cel.

Ile kalorii na masę a ile kalorii na redukcji?

Zobaczysz zapotrzebowanie na białko, węglowodany oraz tłuszcze i przekonasz się jakie wartości będą dla Ciebie najlepsze.
Oblicz zapotrzebowanie kaloryczne odpowiednie dla Ciebie i zacznij działać!

Kalkulator spalonych kalorii niech towarzyszy Ci podczas całego procesu treningowego pamiętaj o tym aby wszystkie składniki w Twoim odżywianiu pokrywały również zapotrzebowanie na wodę, witaminy i minerały(magnez, wapń), to zapewni Ci pełną energię do treningów !</p>
        <p><a href="http://healthylifee.herokuapp.com/" class="btn btn-primary pill px-4 py-3 text-white">Powrót do strony głównej</a></p>

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

<section>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<h2 class="text-uppercase">
					Twój wynik<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAVNSURBVGhD7ZptTFtVGMd5XXAkjgGTMVBet7n4gjqVbCYSnSyEvkxMyEz8YPaFmJj4RaN+4ytDNlqgtAXa0pYOel8YlN4L2z4YNb4savbBxJgZ46ZuM5otJrqJLtv1Od0B2/oAbe85l0n6T34htKe3/3/Py33OaXOyyiqrrLIySOYF6cGmKa9I/924evHMdJlZkXpMivhHiaf/On14Y6nzjLDFMi++BEEFsyrdsKiS9rjg0/Kdvbdpk/+vur5wF5oW5CaLKr5qVsR+4FOLIt4kIZeAx7Ti0eNaznCPtifk3ElfevfLNBeuMqviQYsivQlBvBDsS+jBv+LDYTSFvbGwhLqQ8xV6ubtL7VGpxqoKL5Neg4AfgfFryUFSAeauds9I33LgB0LOHvoW6ysYko9CsLehx2bA6JVk45my68TIclhClX/oJH1L43VICT8CQY9BL36PmdXLc7OTWp7zaELgCt/A5/TtjVF3d3cerJ6HY4sLYpIlZV57QljCNp/9PLXCXyZV7oAe/Qozx5om4d+FKp5Sj+0ytcNP5kionNwTMWM8eD4yqRW4etHA944d/43a4iOzKj8Ft5KfMWM8MKmiVuKxoWEJm0f6Fqk19oKgB6Bnf8eM8aIx5EaDLlHk7rtJ7bGVVRGfTKUoYMk+OajlIiHjKXT13qIW2YkU7LA4XcBM8eKFuSltk/s9NGQ8BTzqaRjGMmaKF+2KoG3x9KMBk2EeOFbrIqZ4Uh1woOEwmAcmBT1mihcPTY2hwVYin1RerGRR5FbMFC/2TQfWXKSSiZWarARzdxIzxoOWmRNkxUVDrUah8yibId0pCJtgZb6OmWNNa2RKK4rb8qUDs/uwaSH8NGaONW1RgZSHaJhUKB7tu0Et65NZEY5gBllCysZy7wAaJFVKxvqvUsv6BMP5HcwkS2DzjoZIh3Kf/TtqWZ+gjHwXM8mKhonVa+RU2e4bPEst6xPPIb076ZhGD9XBIT+1rE/mefkJzKxe0i0s1qJuwvU6taxTmpZrVsQfMNOZ8pjgQ03roWZydA91rF8s5/FecTztKmotmO+FW08FilmcQDbLAS1vOPG0kQVlHvtFapWdLIr0jJ6Nf7Ps/8/RKiuqA8MCtclW5HQS6uq/sUCrwTMsoTHsbqEW2csalZ6F3v4FC4YRG8YcwxaPHPuTWuOnjlPyfansoHiHJVT6h96ntviLHNVaFFGBuX1rPcLmwvUbQsN7qR3jZIpK9RZVnoKhftuosARYnX+iFoyVNSo2L+2Zobcz2sBnQn3IcYRaME6WhXBj8iJW5U/98C1Tyrz2C9SCcbozlKWL8WEJ+6eDqElWkAO7hoB7P7VhjExz0k5YsH5MDkuAqmy2xGO7ipllwf0Bh4faMEbW+fBuCHUJDatKn5kjkc11IXcnj4Wr3Mtoo5+qVvvWEO7N37ap4W20aQ7M5WnMdKZsHbP9WnOyv4Renr9MqtQOoVb41lA836bK1bTpsirGB89h5tOl1Gu7tCvkLqeX5S8I1QVzNuF3UkvAh/CN9fTMDto0UZqWV+kb/CDTLSGZFjsCQwvkOvSKfEXOpWG+urGgdxC/7piXK2nzFVU74XgL6t5FLBQG+YC2emxXaoOug/QS/EV+6geL0Md4UECRzpK6mjZfUzU+X1FdwNFb6rFfjn35hYQsHulb3D4+8Eld0GWiLzNOEMiBBgWg16PkYIA2TVst3d0F9UHXgXq/67XaCdcbwOGHZ0cr6NPrIwh2LjkoxQlDPZ822ziCYEMJQRVxEf520ac3nkgBAStwEEJeg+H94aGoaGw5l1VWWWWVVU7OP09VeOsqgk/gAAAAAElFTkSuQmCC">
				</h2>
				</h2>
				<div class="divider"></div>
			</div>
		</div>
	</div>
</section>


<tr>
	<h3>
		<center>
			<strong><td>${ wagaKobieta}kcal</td></strong>
		</center>
	</h3>
	<h3>
		<center>
			<strong><td>
			<td>${ wagaMezczyzna}</td>
			<h3>
					<center>
						<strong><td>
</tr>
<tr>
</tr>
</body>
</html>