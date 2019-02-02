<!------ Panel menu ---------->
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-megadropdown-tabs">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <img
				src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAjCAYAAAAe2bNZAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAMXSURBVFhH7Zc/TBNxFMeLCBIoRoGogShi0BgSXYhBExMG04D0WnHAxTi4EOOmk/FPnEzkXwMU23K0pS3Y0LsrbaC94p+EmDiocXBxRRmMcWLQEJXI+X7Na22O1+v1gujAN/kkpFfe98u9d7/Hmbb1v6hHEErxx38nCFHOpaSbx8K8Bz/aWl2IxfbYU1E7lxS9wJe2aFDZP+l8h5f/jtit5xak47aEeImTpQe2pDhnk8WPNllSctnrG2Z8xl/bHPUsCmYuKXVzstgHvLAlpW9qYzWtUkAxuR4qZt6ximWMq/fteJlVjl6EvzwCrFKG+TifEJQKfjAdptwz8AtLGpNVFi7DnViijPTQOOVKB2GUuPsULFucWDug9zHKQC+npGA2SIaW4PghtNAny5NQFczCa8pAL5b5GWhL/4YwzTP8abTRJ2hLmDLQi1UWlRrfyIYgRYeBJ+QcZVAMuXOipqgwcE68oQz0ciLiI0NkaAq5LWilrfThRRjo5cxsSCkhAuTSHPG1oJ22oEU3KBM9tMfDShkxsGpa58Yr0U5b8AQ5KKNCWOZmsgebFqXu/nW0KiwIM0KZadExH1Gq+CHSXE0lP/gdrQqLS0hXKMN8dMJRv9vrII0pav2jy2hVWN3PZmthblYoYzVdSSG9iSnTfDSExhbQSp/gf49rlHkuLEitnz7UtDgcct1FG/2CzXyLCsFgQer8o6SZFqWwJE9GXfvQojhZU1IHrIX3mxGEUeMf/oSljal9cXGnPSX2QOuW0kEmi29NBlgRt7GscWVadjY2TZroodrr+GpSlB1Y0pggRC/sqvVMm8wTjjXKTAu2Ho489lzFksbEycL13CBwIE43TbnvUIZa1AfGnmJJY4LW3M+GAGCQBTY/7NqBgPMlZUrREHQ+Txc0ok5Z3gXDOqkKEla/CTYEHsXZo0oFYFTwA2swsAP49eJlj8er4Y68yg0CTOR7JT0a9rTVB52pPV7HCuycn5X80I8638iHg0GXt0UYM+PXjIm9hGVDsFlJivfw0tarKyE1QpBltpvYOxJ+vK1t/ZHJ9BtBjRVlGQ4PpgAAAABJRU5ErkJggg==">
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="navbar-collapse style= collapse in"
			id="bs-megadropdown-tabs" style="padding-left: 0px;">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/"><i
						class="fa fa-globe"></i> ALL</a></li>
				<li><a href="${pageContext.request.contextPath}/posts"><i
						class="fa fa-university"></i> BLOG</a></li>

				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-space-shuttle"></i> CATEGORIES <span class="caret"></span></a>
					<div id="filters" class="dropdown-menu mega-dropdown-menu">
						<div class="container-fluid2">
							<!-- Tab panes -->
							<div class="tab-content">


								<div class="tab-pane active" id="kids">
									<ul class="nav-list list-inline">
										<li><a data-filter=".89"
											href="${pageContext.request.contextPath}/bmi"><img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAYAAABxLuKEAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAATlSURBVHhe7ZpfSFtXHMdtt4dCH/pY2GaZbceW4UPd2Obo08agjBYc2x4KdjJGoYOW4ub61JXEomzsyaJUk7RmEdd1amt1WhrsjJp/5k91taSb+XdtY5uELIk3SaV2anZ/cC/chXPdjZ6T5c/5wgcf7kk4vw85v+s991TQ0NDQ0NDQFHUMQeZDhmUbC5pkUsFPN39ROk2nbgWZ89wE1IVKgGU7H6bThzKZzDZ+2uQDYlROs7rQ5QCBZPIEwzA7+KmTjSCmWOQwqZTKn0rt5qdPLmIxgP7hn21XnobGSDCbSuiRxebK0tIFJpE4wJdAJtli6kw3fqsPTy8cz3gyuDm55k2PLkeGkMXmThfXlD/i+s52vhS8QYl54falDCk5x9c9ax0rQYefZTWIYnOGa8ynQ+vrO/ly8EVKDFE5HGdXA0FcS2uBZVu9sVglXxKebCSGtBycS4v75XRwf2v5srae/xJDWg4srXaMS4trzEe5vvMcX97mI0cMcTkcOJcW9+s544/Hd/Elbi5yxQD1YQfzxdofT0lxcnU+dn051O9j2XYMtMyFw3v5MnNPLmJeMupWKiM3MyR5MzQWGmY8ahz8ujB/ii8z91AxEqFiJELFSKQYxbTYHgz+PO/tRl0TU3Zijo2E7TWX2XjbDPML6rpAWYqpupjKvNKVXPnauGhAjQHKVozAp4PRmUG/R5M9ruzFAAd74kGd26cXj6NieKq1bPI7+4NrwriSElM1P/XsDV08uhGva9g0Sgyw7yK7+qXh0UTJidnjNiMLzpUjA1F3n8fTyJeZe0pVDNAwGurhy8w9pSgGbuPfTCzeKqml9Kp/Iv3JjejsRtTq449RQoAD3Yn4hRnmKvYe02Q36l++3f3k/xKzlbvSB1djPvGjAlYxwGfWm0MvjmnXi0XM3s7kWsNIyJY9DrsY4L2pAUcxiFGo2WWlJTiMGkdEjMplVVeP9wYLWcxbukREfS/QixoDkBHDkd1vCknM4f6ou9/rvYS6LkBMDCDuN4UiRu/2/+uZSAqiYgCh3xSKGLkQF3POYdJAv6FiEHxlG+/ZP6lPoIrBSdGJAY7ZDdfeCY0tyqHqvunZnnvWjIDCN5lEjcvmyOOpOVSRmyFvYprvWDtQE0BRo0vEhP81gI+vR2dR40hCxUhAxUhAxUiwJTHn79gUKpelEyUim7ISA2l2WQ6hRGRTdmK4bFM5rSdQMsSUo5gKpdG4o9lpUaGECJSlGEjrnG230mluQ0kBUGLgBXv9cNiejULLPhGLebcn8Qg1Tu4D4WbAJgbyrWOihus5XXLFwFYivGAXS5ALbB1kfx9OsIqBNDvNdXLFAHDqAHbmUcVL8faPifBAwKdFfR8usItRKpXbuX5zWq4YAE4doASgeE3DLqvvMpI7b7jALgbS9Lthp8ppaZUrBoBTBygRYmDjWmqPFjdExEDOOiYrVQ5zu1wxcBTjYG88iBIi8PloxIr6LAmIiYEop021csUAcJep1i6lUFLev/KXH/UZUhAVA1E6LEfligHgKMb+ruTfYinwhpC7g11GjScFeTFG4/PckjojVwwARzEEKXDHEl6b5hPiYiDfu1y7Wl3TLagJSHG4L3ofxDSNByXPyZEkL2IgPzjN+4YYT6Nc+vz+poaRyE+oa3kh4K3jp05DQ0NDQ0NTjKmo+AfdJ4HAn4ZkBwAAAABJRU5ErkJggg=="><span>BMI</span></a></li>
										<li><a data-filter=".97"
											href="${pageContext.request.contextPath}/calorie"><img
												src="data:image/png;base64,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"><span>Oblicz
													Kalorie</span></a></li>
										<li><a data-filter=".96"
											href="${pageContext.request.contextPath}/bmr"><img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAYAAABxLuKEAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAujSURBVHhe7Vt7bFtXHU7HeAht47WNhxgCNh6CbRqaECC6OU5aN7Gv33b8ipvEbtMmfuRpx6/ETbs2TZNUmwaCSYDGQxMPaUIDwf4AjW1Fm8YY/8CYYGtBY6u0rtBu7Vo2Neb3nZxzc+Mc2zeJ81jJJ32qc87v/H7fOfe8723DJjaxiU1s4v8EhbD7S4WA5TP8z4qADWz5n5cvigHl80OultMJxVgC0x7Lc8Ve71U8WwXSUh7z34XdkLvlNMry7MsPw+4dr4rKCqa9lqd4toqRNssfyu2ocV7l2W9fDJhMH0zYmr7A/2TIBR17RSUHHNtL/fZt7HfS2lQqhh2f5WasVyENebCBrSiXDzp2czMGxEAs/ufGRsJi8MQtjf9FReJK44NFg+FKpFMv+BPScgF7aToZLU0nIqWUp4VVOBNQvsMKE7IB5X6kDXtamQ1ss1QGafABG/iMW4w/ZzEoVtxsdLHCGxW9XsNVCUvjguESNxvakZdyt5xET5hKdJVmqLLgwe52XmHlMeaAkPZZHkfaoT3tqt10vIv1LBpOJ2FDjbJzQQyL8RRiMwcbESTSpBXMaDH+GHkpT+u/0l6zWlnBPltTKeO3/oY5IGR8ym/7bM2sp2jtaDIupbzmF2GTUBp/Wh4nZm3azhxsRJDAcLlgepq/Q96IX/k9hpG2siD1Agyvo8wBIee33420cjuUHfFZjsEGPsvjEMPMwXqjz274JIl5mPiImGiTimGrRihjXDHejzyaJxy5oH22vMLDnpY3D3o818EGmGpvvz7lbn2z3I4aZrYQstlgQz3m+4viWBu/jrykxXAzb7iHoRFpawoaIsdUUYrx2WKxeIXX630H/f6bSGc0Nxl5kYZCu+sJbWUxueaCth/ybBWU9gDytLaFdqc6DyWVxmZtDJqAn0N8kHT9dT7d+DgvsjagJ/F+rTDGFuONyIu13nkLTcB/pqd6htKHWQGOEa/3fdOJ6Ddp/jhLFX/5cGxnlmctQLGh4YrDPR15apCTsD0S67q3fCNIDyDFYlCsXqvxi0jrtRpuWqyr5RpWYBWxpVtR3osfbJ9SJqDPZvwcs5rHFv7vamJBDGgo19Vj2foB5HHt9dXUazZ8BN2VntJbCcWwC2n0m+1LGC3G4xhGzHgdwYayxXhC6CKNTyOd9lN7oJ34LC37H2bG9QB114n5YI1nu2+//Z3oviTiGWqwv8SU5q9x04qoR8Pp8QEt0ESa/wiN0Eo6XxP6iQe56cpBLf0zjWMat4aP86yKwPY93aY8Pegynaet/SzKYZM24DSdH/Epv8Z8w00rAjawHXBuP685JszCJ3yXHxFk6LHfcYNWO+rCs5YPsZ2nFh+fd9x4WqSXYzRkvyNNG7R++3Z2JKjGQbfpbDEUqjgxolGGXKazsrJaIhZiIjYvugDoMWT3b2FP+mlun6/bkkFd8XvE8+iaMUfzhzBe5/42BrkJQ97nuyEbsP1g0LXjTFIjeAHpaffTYbCPP3XBjM/6EHezCJmA9ZdaW5SFD/jSpgsiNjRACzRxNww4lkA7DbGnUBfUCX/T3Kie0XQh0bL1OgrGuj81yI94strKRZrhM0H7OB30XhRdvJw4FY+2O0sT2jMPsdjhVW0GaVgxxxJQ3hvCbl+nd8ERAT7hW3vy1hKaoA0aoRX+tD0EdeK2s2gonlwbSWXbJ0QQnJB5MnrHjXTge5LOMpdEvpY44+QCttKh3SG1EuVEBfuszcweFcCehbtXgTTR4EnyKfMjiFiIidhaLYLQSseRJ6Cdu8cq9aDIR115si5soULisoidQQphe1DWIOjC6TZLaX/Ex3ayMvHl7LPXaJhi8UoxZPprNIwgYkMDtMiGdNK+7VI+ZA3AP82Z7HROPedJFnApwO62z9z4FfzGvSs1ChtagsPuHTQsPKUj8U6p0Eqc7O1QffTZt7/FgklAqw/tmebsjlAZma9KhCZog0bhA0zammaLQftt8I+6rXhXnG4zHxfOMa6rDZVaxNwgfKU95ud5iEVIeczqRm203SX1pYcHdwfnJm3uK+WtHHNJmIxErqYur+5DJvaGpQL0EE8S9y9CZN5vTfMwi0Cn8Zyww/yx1J6p5WHSPD9nUa/hE/KKkA+5O4RAmumlgfUQky4um4Qv2qS9JptfBJA36NxxTtjjkku7Mi2VKXerGht14mGWD5rx88JhxqdIg+phLuhQheHpFYLWmve0Y0G7TzxpMBdafNGllyM+i+qnEHQO8BDLRz5oV2/l4FwWtBbHdrpVUWA2YP0Wd18TmYD9u9qy8CWLUYtYrYQPsTqtCMVA4FqxdGKWlwWtRmzOhCAQewruWjeoUs9ofcCnLFY10q54rjzVpRit0ysXcsrOLP22bdKglXggGliwp8DbxWrzSiWgDFYw4Qc+4VsWsxL7+HssHBu425Uj47exdzig3k0c9ivaFQivT4pe77u4yyUDZeFD+MNKhRiy2OWEZlEOdeEuV45iqO2r4slP7J0/+1TjiGZM01N6HUOSu1s24AO+hF+9c96hPWFmjzqgLtxdfSAEjXe1SYNryfYNXDzbN7Q7b+ZuVoys33orfIqKHu7ZKdWg5XjX3DyHOnA39QOuCOCcVilpcC21q1A2YLuPu6gbtCvVGG39ZRq0zAdtzLbaNceyUQwrW/GEhjyLX4aVkxqDP6HK1worAdv8OeauJRBLpkFLvMBjw4jqwF3UFwNO0zlsuGZqTMBiz1DXia4MWb/tF4iBuUymQWUiyjaUqzKMBGjny27VtC/cZcz4raxh6rLDrAAa0sOsx1AsmQZB8eHAqgwjARqrdyJIrd1ngZ+gcYfDi9YddDzoZTFqnLyhdVWHkQB1yXMYKjIRgrgwguhcwH6AF6s7skH7XYiBWDINgtCKKYAXWz1k2qy/wsat2kl3KtbJxjUNvUd5sboD39QgBmLJNDDSXIirUUwBvNjqQQynWvMMe1Iu00VerO4YdJouUuNIYwtO8PkFmnmx1QWGU615BpMexvZY2OnlxeoGmsP88H1oT/WbRGiEVl5s9YGumfLWvrTC6pRyt/6TF6sb8HUWLdfSmFoOk8ZVXY3KgctxjG98GycTJDhFY3zI1VLKBq1DvOiKUQg4UtiwwbcspuAU/25PXH6vGfDN7oGoXypKS9zwpz3mC/X4wjsTcn6ZessFPW8NoI0acO2/DaZd7bdl39TJOBXvLOWC9leKdADkxZcMKn8b8RR8yWKUE5/AQiMvvna4a7fzo7Q/uCQTJSOW9/GI75VCh8vBXehGsdPt2t/lO6X3Mhx2Aw7TJTrVX89drC2GPeYTeu9nBA/37HzjwC5fjruoifFoYIzKXJD5qkS826bF4QXuYu2R99sKo+HlvQw7Euv8yTd6eyt+tIw82MjK1iJe6uWCDun3fWsCXDemveaLMnF6OJ2MPHZfd/eil19Io7xjsjJ6SBP0xZVco9YF+LJpsmdp75YXMBG9m7tSgTSprQ7iRg//e4W7Wj8UAnbzWIdn0YfNekk94+K9sbD6jQp+I01mq4fQkg+5Tdzd+oJ2of+QidTLo4lddu6qYSbZ5ZTZ6GU2YD3BXa0/sgHblJ5L6YpMdPVzVw0z8UhKaqOD0JAJWie4q/VHsaPjPfs6PSdlYnVSPTJMJyLDknxd3NfheQlauKuNgdEO1xjuV2WCa3EqHrFwNw0YVjKbmqTYo2H3Pu5m4wA39xM94SUvsbRLPatdsrF/ocn3dZltNSL2cl7/rgmmB7uvnU5EX5AJr0RqBKrPQswkIvtltpUZeV67sm1IzMQ6byGhZ+QVKGMi8sg9icS7eVEVSKOh8ai0TBnpQfwHMXnRjY0jyeit1DjHZRWZZ+SBakeCexKha2iY1TgSRI5PJSN1e/27JphMRa6mih2gVeZltSKJ6DkaOg9RT1H/c1ctkH3zXJnoOU2jvIThVq1h3xaYjEU+NhXf9Sl8v8uTlgyUPdrf9Wn44kmb2MQmNrGJywsNDf8DWWEKVwJzGJkAAAAASUVORK5CYII="><span>BMR</span></a></li>
										<li><a data-filter=".87"
											href="${pageContext.request.contextPath}/product"><img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAYAAABxLuKEAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAPoSURBVHhe7ZvdS9NRGMdPBa3ooqKXy+qifyLoOrsITWtiWUGvphARQZSpc4T4UlCuqKyojCJZZLJeKcpyFaVW4pahRglumHYRvbnXfk/njLPa7+c5bm772W/xfOALOn97zvN8fM7wRoIg/x4LwFT+JRKLwxMucXjD9utDykL+EnKnTzE5vKHBm94w3PSEhm95wmb+o4SxuP1rLW7fUv7t/wHbloiUmCS6PdXdMLfSHbxqdQfB6gr2V71WFvAfZTaqbdEmzvZYXaEsKsUTkRKNK/CyphNm80cyF9G2aKPdnsNdyiyrO3Cy0hVQVFL+ynloccN0/niEVc7RRTltvkMr7ygm/pJxGXdbtOHbY+0OLmNXRigkNq7gZbsdpq1q/TY/u813NMc56s9x+iDbOXqWH29cEtkWbRo/BpWqHoEIQfa+8XdQEd+ZkNhkO31beAvG4Gwh2X9tG+mMZOeMV44+b0A0fLzcGAyDrTcklKFNUUdAJYUl9/GXXycOLOv500tMWI+83cmhLpesrF9LntDDgaW5oVg49ERyaSAE8baHfjjD1nb/GDmFd9/BlZI5kV5iw3pkvfK29aXGTGbXrSaD9WYupsgEjncDwmEnmkS2h8nZ9EIthqW4qQXs26eoxdAeWa+sZ96+ftTmknP0txA5lB2ejm3RJt72WGg2vBi7OeXHD44VQ3tlPfP29YGtJT1E+SMmjduiTbztqXAFoeC5Wszqth9Qb1khEsN61udKRa8QOygqRo9t0Wa87SnrDkL+M7Wc/AdeuLh7sUpMJHpdqegVisa2fqZTr23RZrztKaVy1jxVX6vNLc+haYdJLYYm7VeqJo9kRa9QNBfPlPaLhtAzsu3Z1xWAvKfqzdl7/qRIjMJm4WOlRuNGMs9mJl5bPt0SnuPrTHDb3eO/N/AZJju3PnyGhrcjUNs1rEp5xyfY8HgICmNSXl30PrbvSOgsbCY+XvK0l5ISOE3gfwqbiY+XPChGAoqRgGIkoBgJeoj5eozAp7rEwp4V1UglhhRzb9ffvysSzf3d4lrJxnBihg+LB08kI0fENZOJ4cSMpCKGvldUM5kYTgzLoz3iwaXJI9BK3yOqlWwMKYblp038QSsKe1ZUI5WkRUyvhRSIimdy2Ex8vOSBBrJcVDyjQ2fi4yUPipGAYiSgGAkoRgKKkYBiJKAYCShGAoqRgGIkoBgJKEYCipGAYiSgGAkoRgKKkYBiJKAYCShGAoqRgGIkoBgJKEYCipEAp8gSYfEMjnKCLObjpYZymrSIDsjE0Fma+VipAxfIDOUUqaBFW2nxzkwM652mTKknxv8/SgRBEARBEASZJAj5Daohf/9C2mIYAAAAAElFTkSuQmCC"><span>Baza
													Produkt�w</span></a></li>
										<li><a data-filter=".86"
											href="${pageContext.request.contextPath}/posts/newPost"><img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAYAAABxLuKEAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAV8SURBVHhe7ZhrTFtlGMf54Mpw00QzdXPLph+M2zLYR0FMhIEpBcYoBW1Zx2UscmfOMW5GGJvQMREQhG5BIDjMuIzbRCKj0HJTwRgzjZmXmJhoonG6DyZeMK6P53lzzrG078GWtZyDvP/kl3Beznme//Pve94S/JiYmJiYmJjWhRoWFvUN84vjiuDDxQzelvxqmP+zhAsHlED9wqKJtyW/WDASYsFIiAUjIRaMhKSCOdj6HeypvOETsDat55oIJqLpW9hW9KlPwNq0niyYtRzMq+//AefmfvcJWJvWkx2+EqybHVMzR98ZUqybMyao6kuXusvBgpFgTQTjjb9jQuu+cam7HOzwlYAFIwELRgIWjAQsGAlkCQasd28Fq38kYjXvMtSW7i9C6gZHRmkm5aBueMIq+EKPgl/0zo/hfdltG5Jhyh+Q/vrH4An1IUJ6VQfVpBw8X9sj+kKPgl/0zo/hfTkGM2Z+VDQQpksFTfoJj0h7pZ06mCNpZ9uozy5HWGK66Oua+ZHVD+bmu/dCRFy0aMJTwpLSwGT5kRoIUm35gRsylfqsO6C3X0bvWf1gkI8vbYNnkyOpxtwhPCkdchqHSQiOgeAaBkd7xh3QE3pz9OrVYHT5pd26grJbiDa/LNg5GIHfxjfBr2ObqXzVu4Vq3pmQmEQC7XfOfN23hdoLQS80j+gdZxDmwdn4MT2XrqB0JLGgDJCwBOOZ118KrKU1XY7bto2QZFj5rnIGd4PdRu+1HOgdZxDmwdn4MT2XYzAhGu11fXLEHK3pf7HQ+TA8FX2QOqgnYA3nV8Rd0DvOoKhgkNm2HaCOX/lhrdZq4IOO7dTa7uCzYFb6Kjlyi/uWaKwIggNxMdThaeC3SxP3DD5Lq+ku3n2V3Dx8PWVxIoDsoDcqAuF4digYjBEQl6QmJBsPkDX83Vz7DvhrMoBaw1O8evg6y1vByAF658fwvlgwElo2mNn7Aeb3ygt6oHnjkCeYj4IAbg4B/PyOvKAH9ELxKE8wn+vpRuXgRoqrPw4WzBdHXf1xsGCUFMxIyz5ITVcrgt6G/S7+EFmC6TTtof7VKgfNlYEu/hAWjFKD0ejToLmrD861tENojA6Co+LhdF0LXLjcDwnp2eSeI3mF0NozBIVnz5PrcK0BGtrfhnqO8Hg9WTt55jy5x5h7klwnHM2Bi5cHobyumdTE2jXmDtJLY/j335mKDabEVA9Dk3MEQ9YLEM2ZFq5NzW3knpauK+R6cGKWDJhdXCHek8X9jGvCNQ6Oz+CzwhrWNGSfEK+Lq18T+ys2GPxku0cn4M2+q/D0oefgSU0CNL3VA71jNkjJO0XuySmrhAHLjBhUFLfLLg2/R8Cfcc1kbiP35JRWkuuU/FNw5doUNHZ2k5ph3M5q671Kegk7EVH0GROsjl9yTVvD18H5mra25NqNuooNJiRaC5lF5XA490VxLfFYHhyvqPYKWEuoiz2wF/YU1hQbTMHLVeK7H5+WCRG6ZBgYnxHX7pR+yzSpqU3NEtewp+KDyeXOBDQ7ODkLscYMCNPqydkgDHGn4FmFNWONx0gPXMsuOa3MYLpqdovG8J3HQ9bxQMSAMovLvULs4QyxLvY4kl+45CzqMO118Yf4NhjrBgOt6SddW0VjcnO96yEXfwh658fwvuw2/2doTZEWbgsHR9HNrgbY21y5j+qNYPWP5Mfwvuxzmx7kwrlNbczx/dB9YG3dCZaLu1YV7Im9aZ4Q+5T/3/bpzQ/wY/hGXJMBWnMlw32Yfbx93wlmNu6021Q/0QwoEfRqtwRs5+37VmBV7eZ2zmc0I0oCPdpnVY/ztldHYPW7yz6tSuQ+kQvcVh2xT6nGFQF6sanMHFr0yNtlYmJiYmJi+r/Jz+8fYhZGb/ODXiwAAAAASUVORK5CYII="><span>DODAJ
													POST</span></a></li>
									</ul>
								</div>
								<div class="tab-pane" id="sports">
									<ul class="nav-list list-inline">
										<li><a data-filter=".38" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_Basketball.png"><span>Technology</span></a></li>
										<li><a data-filter=".41" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_Football.png"><span>Music</span></a></li>
										<li><a data-filter=".62" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_Soccer.png"><span>Startups</span></a></li>
										<li><a data-filter=".82" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_MensTraining.png"><span>Celebrities</span></a></li>
										<li><a data-filter=".93" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_WomensTraining.png"><span>Entertainment</span></a></li>
										<li><a data-filter=".94" href="#"><img
												src="http://content.nike.com/content/dam/one-nike/globalAssets/menu_header_images/OneNike_Global_Nav_Icons_WomensTraining.png"><span>Series</span></a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#kids" role="tab"
								data-toggle="tab">Countries</a></li>
							<li><a href="#sports" role="tab" data-toggle="tab">Top
									Guess</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>