<jsp:include page="menu.jsp" />
<div align="center">
	<form:form action="saveComment" method="post" commandName="comment">
		<form:hidden path="idComment" />
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ex3"></label> <input class="form-control" name="autor"
					id="ex3" type="string" placeholder="Autor">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ex3"></label> <input class="form-control" name="opis"
					id="ex3" type="string" placeholder="Opis">
			</div>
		</div>
		<button type="submit" value="Save" class="btn btn-primary active">Oblicz</button>
	</form:form>
</div>

</body>
</html>