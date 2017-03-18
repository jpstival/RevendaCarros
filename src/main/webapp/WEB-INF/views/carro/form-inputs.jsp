<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="marca">Marca</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='marca' type='text' />
		<form:errors path='marca' />
	</div>
</div>
<div class="form-group">
	<label for="modelo">Modelo</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='modelo' type='text' />
		<form:errors path='modelo' />
	</div>
</div>
<div class="form-group">
	<label for="ano">Ano</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='ano' type='text' />
		<form:errors path='ano' />

	</div>
</div>
<div class="form-group">
	<label for="cor">Cor</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='cor' type='text' />
		<form:errors path='cor' />

	</div>
</div>
<div class="form-group">
	<label for="placa">placa</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='placa' type='text' />
		<form:errors path='placa' />

	</div>
</div>

