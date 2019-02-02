<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>" />
<!------ Include the above in your HEAD tag ---------->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">
							<strong><img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAQWSURBVGhD7dlbqBVVHMfxk3lJScxLmpD2IEKK+uAFFLo8qJFCSRBkT4F4wbuCiOLlxSKt6CklEQ0CBRVKKS0VMtEXQ7GnEjPLboaGSt6ym35/hzOwWfNfa9aaPXsrh/ODD5y9Z82aOXvWzLpMS0facQbjNWzGYfyGP3EH/+IyTmMPXsck9MB9kT5YjBPQCae6ie14Hg+g6emHDch+8Sp8jZfRlH9IB5mFS7BOpgpqlsPQsPTFp7AOXrVbmI3K8yR+hHXQRtqKzqgkY/EHrAM1wyfoiroyHBdhHaCZduFBlIruiZ9gVXwvvIPk6OnUrBs71v94EUnRI9aqrKz/oPvse5zHdVjliqiZqxOOippUvTf3X/gICzACVien4ckEzMdeqJe36nK9j6iox7YqiHEbasv9kZqHsRBFV0vjtqEIRpftGqwKinyHMagn46F7waq/lvqXYBbB2rHIKZS5Cm6OwqrfpZ7/EXhzEtaOIT/jURTlKRzAjNZP+QyBVb+Pdwij+YS1Q4h+mVEIpRPWQG1b+/hu1mVw6w/ZDzOaFFk7hCxHKA9BEymV/Qer4BtuqPd26w/RFKILctHMztrBRzd3aECnEz4Elb0ANa1Q1Me4xygyGrkcgVXYx9fWs3wIldM9pPYfip6Wbv0xXkUuv8AqbLmBnvBlDlTuKkbqi4Jo/u4eI4buvVxSpq0H4Ys6K/XS6g+m6YuIpN7oGXMgaRX0eQu+ZINN3XOxyZphqk3IRU8Vq7BFv6CVZ6HtVxDTt2Q5A/cYMTYiFx3cKmxZASu7oe2rWz/F5TG49cd6E7l8A6uw5T24GQhdVQ0c9XdsZsI6RgytqeWiobRV2HIcbvQ41jZ1gCn5Em79saYil3WwClv0RHoCtdkJbdMcJDZa2IgZ7fpoWJXLZFiFfVaiNpr56XtNpGKT2gnX0kjATHeoo7N2smgW2QuKOkd99zdi16H0wHDrTBGcKe6AtZPPu1DGQZ+/bf1UHPX89TQp0aPem+dg7eSjk1GTfKHt82cIRdPZ1MGp5RyCi93aqFVxa2cfrWy80fa3rqgVNcGl+B3u/mXMQ2G0tG/tHJI1k2zIoNcOE6EHwueIXSGJodG05jmF0VX5AlYlRbJ/ZAms7VWYjujo/USZXzH7R+bC2l4vzfmTk80pUnwApcy+RfROcgBKZQusSn0+hpI9xaqi1hF83BZFS/kpYzCtbymaFVrby9DqS/LitZVuyIbnRfTLaU338Zrv6qHlppdQWXRlNK2M6Y2P4SvnuzK08vI0GhLNwZvxBkt9jyZcDU1vaMCWrRxW6Ve8gqZGqyXboHch1kml+AF6TxLVYzcqGkdpQXkfUl5JnIUGkM8gOAC8F9FcRMuYWgFci7ehk9Vqx3po6DIFg9CRdpyWlrv8tv6dA3s+xwAAAABJRU5ErkJggg==">HealthyLife</strong>
						</h3>

						<ul class="nav masthead-nav">
							<li class="active"><a
								href="http://bootsnipp.com/iframe/g6GWQ" target="_blank">Home</a>
							</li>

							<li><a href="#">Kalkulatory</a></li>

							<li><a href="#">Contact</a></li>
							<li><a href="http://localhost:8088/Aplikacja/product">Produkty</a>
							</li>
						</ul>
					</div>
				</div>

				<a href="http://localhost:8080/Aplikacja/bmi">Oblicz BMI</a>
				<div>
					<img
						src="data:image/png;base64,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">
				</div>
				<a href="http://localhost:8080/Aplikacja/calorie">Oblicz kalorie
					produktu</a>
				<div>
					<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAaXSURBVHhe7d1lqDR1FMfxawe2GDzY3Z2gL0RRwUZRFAUDDFTwhaIItqIior6wwA4EwS7swAfsDlTEwsDE7vh97+6B8wxnrzuzc/eZnT0/+MC9O7F759zp/392IpPJZDKZTKZM5pfFR9hCMpJZRPaSS+QJ+Uz+ln9b4it5Vq6Wg2RZaWS2lJvkF4n+kLb6S+6T3WUOme1ZRx6S6MOOm9dke5ktmUtOl98l+nDj7Dph0z20LCGPSfRhUse7spZMe2bI6xJ9iDSrr2UzmbYsJmwnozdPsW9lfak97DNyM1XNR8JmvtacJtGbpf7cI7WFQ9s/JHqj1L/9pJY8KNEbpHI+kflkoGwh0cxTNUfJQOFySDTjVM3bUjmcbf4s0YxTdWx1KmVPiWaYBnOWVAqX0KMZpsHMlEp5SqIZpsH8KJXCzaVohmlwy0npcPMlmlka3IZSKgtINKNUj22kVBaVaEapHlmQhsmCNEwWpGGyIA2TBWmYLEjDZEEaJgvSMEMryK/ycNfj3dfahnZp9jd+3n2trKEVhCYvlrauZQeI5WaJxvk/WZAaZUEaJgvSMFmQhmltQf6U2+TWLn6eqr/J9/KC0GPpLnlSvpFo3P9DT6/n5X65XTgifFX66QHWyoLQNHUfscwrt0g07gOyo8wjUTYQGmT003mIhb+DzC1ReI/d5EWJpkfrCsKCo2OoZUFhoRfH+0FYOP2GDjLvS3E++E3KtK2lySdrTzSvVhWEYuwhFvqczJTieD9JsUEZ8ztQ6Ep3rhwpNAT3ofEAHWWK8ztCfJaWw+QMuUBOlOJ97qWEE93ivFpTEIrh/+PpUvyK+HHMMeLDwmONKY73j7BAfQ4WP06x+SbF7NWa/0rxoRtBcZxWFIRNxi5iWUneEz+teUt8F2OKEY3nHS4W9kf0J7dhrAWW7cRPF9lULFFjwZEvCKv9zrzQzbryqRSnNceJhU0a3cKi8Tw6WfrcKTaMzZyFtcNPF/H7mmj8kS0Ij6PgMHKnyd86oWvcxxJNa1YTyyESjRNh88dhMb7svlYWa/LqYmlVQQiHq8WcJNG0YEH63CDReHXiAOI5uVzWE5/WFcTCZmrOzo+Th5TvSDQ9x/8+nLxF41VFu1qePHGqsE9bWaZ6JEYrC8KOlCMkHtZiYc2Jpn9EfHrt+Mtin8XRFy0ye4Vhu8rWk7910rqC8FAWO5ZnGI9psnCppDg9Le593pTiOGW9IcWn9nC+cqhcJFyGofDWltkv8FYVhMsTXK/ywzkBs6wgxR5aFMAnOoMvg/OUjcWyvDwq0bimtQWJ5vGdLCmWk8UP5yjHb1bK9I/n2hjnELi2+9oz4sPOuzhd0d5iaX1BwGbCwg6ecwg/nH2OZW3p5wFoXwiH1Bbud/P6NZO/dcI/QnG6ItYof9g9FgXhEsqqYuGk0Q+/Xny4nOGHR44XyzJil0Yu5YVueFQfC7w4rXeV+IxFQcD9D587xIZRMP9fyqWQ6ADAcK7i1w6/EO/mBZdexaVQbOa48uwTnTO1siAsgK3EsqL4HTzbegrhw5rEJohnOfIgHBYu9zZ8NhIKavPhpI/PYaFw+8uNwvkI90fOFO6pWFjDLDxe6V7x502tLAieFp9TxA/nLh6bmX7D5fPokgn/+f0+D/FYYY0r5jKx+bW2IPA3qqIdPB1Pj5apHtPKOQZ9vzlC89N6LDgOs3uFNcsOsblVzOGxz8gWhD/mvC6OpqJxPE7IODcxbPOj8dgMcQ+dx7OeI+d3f+ZCYvFcpxeO1jgM5prV2XKhsEA/kOK4XGG+Qtgfsb/jkosN4zPa31j1xHVoBUn9yYI0TBakYbIgDZMFaZgsSMNkQRomC9IwWZCGyYI0TBakYUoXhIt50YxSPUoXhEQzSvXYRErHN1hO9VpFSodL1dHM0mC4leBvOfcd7jdEM0yDeUkqhWb80QzTYHwzqFLh1mg+KrZ+vntG6QzalDPNijYClfYfFvoERjNO1dBhdaDQfCa/ma0edMmo5cvB+DrR6A1SOSdIbRlG17I2e1l6PYmiUhaWXt3Q0tTYVK0ptWcNqdq7dVxx2kAvsmnL5lL1CTzjhhaVNOye9vB8kQ8l+hCpg6andCAdWuiNFD0HJHWuVbF5ny3ZV/gGy+iDjRt23hza1no0VSV0I+AbLHnqTvRB244+8JyB1/6N0HWEZ1zRV4POOL4Jf5twP4PziouFC4UDXZsadmYI/cS3FbqfjSp6BtPdmq53I1WATCaTyWQymczExMTEf1hQM33gnqagAAAAAElFTkSuQmCC">
				</div>
				<a href="">Oblicz BMR</a>
				<div>
					<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAP7SURBVHhe7d1PyFRVHMbxt8zSMqKkRRgZphhYLTLSMNqUEgbVQhJU2gRuXESIBNUmUCiK0KgwxFokBWHkpkVBEbVQ3JhIixK0WmRFUaZYmf35PjiLV/mNM3P/nHPnPc8XPvvxN/OO984999wJ55xzzjnnnHMjdRHmYBGW4T7ciQW4Eq7lZuABvIq9+B3/9fEPvsBW6M1yDXYjXsFJRMMfxofQX5Or0WV4DqcRDXlU3+BauArdgIOIBlvH13gZj0BvuBuieTiKaKBNOoZNmAbXp8vRxl/GhXwKf5X1SV8n0dDatg/6MLhJzcffiAaWwja4Se1ANKhU9GFYCEc66TuOaFApvQRHDyEaUGo68nL0PKIB5eCvLfoY0XByWIPiO4JoODk8heL7C9Fwcij+8Hc6osHk8hqK7ipEg8ml+DfkCkSDycVn7JTzJ5PzPYPi+xnRcHJ4FMWn69/RcHK4B8W3B9FwcpiL4nsB0XBS+wVaXlR8qxENKLWP4EjX0aMBpfYsXK+fEA0ppeVwvT5ANKRUTsBLgya1BdGgUtHqRtfrVugTGg0qlTN4GI7eRzSk1A7DkY7/owHlcB2K7zdEw8lB64qLryuXcHVfiS4HFN9uRANK7Us4egzRgFJ7EY5m4UdEQ0pFCy1ugut1L3Kdi+gcZD3ceekTmvqcZD8Ww/VJt5tFg2uLf+EdkM4DosG1ZSXcgHT4GQ2vaX9ABxRuQBsRDbBpu+CGaDZOIRpik7zCZITeQDTEphyCFzSMkH51bfM2txVwI/Y4omHWpXMdVyHtsvAeoqFWpe01vFFAjS7Gr4iGW8UdcDX7FtFwq9D1e1czvyEdy29Ix/oB0XCruA2uZk1eJ7kbrmbRYKu6H65GTd+luwquRtp7JBpsVRvgavQmosFWpTVgl8JV6EFo8Vo02Dq0laAbMb0ZfyIaaBM2Qz/LuAHNhG4C/RfRIJuke0K8uLpP+mV3LZo8Kx+GznGehjfw73U1tKFxis2TL0QXw7TnYrGrF/WYie2os8l+G3QQoY0MtJJyyl/i1U2V6/A5omF0zVfQChgtuphS6T50rSzv0iYzo9DR3ltYgrHudrwLLWaO/qHj6DPowTJjlbYNfwcpDl1z0dfuUnS6S/Ak2jyh6xJ94F5HJw+Z9UghPWUgeuFTnX4f09dzZ9Jl0e8QvdhS6ASzEyvp9Zi6JpfpjDPtHZl1ReQ10O4H0Ysrle65vxlZehvRiyrdAST/JfkuTOXD2rp0q3fSPkH0Quys76HTgCRdD/91DJbsP/gnEL0AO9dOJCn3dnzjQo97TZIPdYejayt64Fmr6T+qph4YXIJb0Gpa06SHydtwdPLsnHPOOeecc865MWti4n/GBW6SAm/iygAAAABJRU5ErkJggg==">
				</div>
</html>