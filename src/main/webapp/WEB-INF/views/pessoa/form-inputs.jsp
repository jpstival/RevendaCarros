<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group">
	<label for="nome">nome</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='nome' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='nome' />

	</div>
</div>
<div class="form-group" >
	<label for="cpf">cpf</label>
	<div class="input-group" >
		<span class="input-group-addon" ><i
			class="glyphicon glyphicon-unchecked" ></i></span>
		<form:input path='cpf' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='cpf' />

	</div>
</div>
<div class="form-group">
	<label for="sexo">sexo</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:select path='sexo' style="height: 30px; width: 300px;">
			<form:options items="${sexo}" />
		</form:select>
		<form:errors path='sexo' />

	</div>
</div>
<div class="form-group">
	<label for="email">email</label>
	<div class="input-group">
		<span class="input-group-addon"><i
			class="glyphicon glyphicon-unchecked"></i></span>
		<form:input path='email' type='text' style="height: 30px; width: 300px;"/>
		<form:errors path='email' />
	</div>
</div>