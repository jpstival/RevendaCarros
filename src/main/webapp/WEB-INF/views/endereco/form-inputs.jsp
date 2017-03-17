<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="cep">cep</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='cep' type='text' />
		<form:errors path='cep' />

	</div>
</div>
<div class="form-group">
	<label for="rua">rua</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='rua' type='text' />
		<form:errors path='rua' />

	</div>
</div>
<div class="form-group">
	<label for="bairro">bairro</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='bairro' type='text' />
		<form:errors path='bairro' />
	</div>
</div>
<div class="form-group">
	<label for="cidade">cidade</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='cidade' type='text' />
		<form:errors path='cidade' />
	</div>
</div>
<div class="form-group">
	<label for="estado">estado</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='estado' type='text' />
		<form:errors path='estado' />
	</div>
</div>
