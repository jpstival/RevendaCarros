<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="marca">marca</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:select path='marca'>
			<form:options items="${marca}" />
		</form:select>
		<form:errors path='marca' />

	</div>
</div>
<div class="form-group">
	<label for="modelo">modelo</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='modelo' type='text' />
		<form:errors path='modelo' />

	</div>
</div>
<div class="form-group">
	<label for="ano">ano</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='ano' type='text' />
		<form:errors path='ano' />

	</div>
</div>
<div class="form-group">
	<label for="cor">cor</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='cor' type='text' />
		<form:errors path='cor' />

	</div>
</div>

