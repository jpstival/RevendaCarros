<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="pessoa.id">pessoa</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='pessoa.id' type='text' />
		<form:errors path='pessoa.id' />

	</div>
</div>
<div class="form-group">
	<label for="tipo">Tipo</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:select path='tipo'>
			<form:options items="${tipo}" />
		</form:select>
		<form:errors path='tipo' />

	</div>
</div>
<div class="form-group">
	<label for="ddd">DDD</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='ddd' type='text' />
		<form:errors path='ddd' />

	</div>
</div>
<div class="form-group">
	<label for="numero">Número</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='numero' type='text' />
		<form:errors path='numero' />

	</div>
</div>


