<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="pessoa.id">Comprador</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='pessoa.id' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='pessoa.id' />
	</div>
</div>
<div class="form-group">
	<label for="carros">carro</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='carros' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='carros' />
	</div>
</div>
<div class="form-group" >
	<label for="preco">preço</label>
	<div class="input-group" >
		<span class="input-group-addon" ><i
			class="glyphicon glyphicon-unchecked" ></i></span>
		<form:input path='preco' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='preco' />

	</div>
</div>