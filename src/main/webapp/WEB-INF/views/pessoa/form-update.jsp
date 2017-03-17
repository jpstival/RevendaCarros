<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<div>
		<div class="container min-container">
			<h2 class="basic-title">Atualizar dados da pessoa</h2>
			<form:form role="form" cssClass="well" commandName="pessoa"
				servletRelativeAction="/pessoa/${pessoa.id}" method="POST">

				<%@include file="form-inputs.jsp"%>
				<div class="form-group">
					<label for="endereco.cep">cep</label>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-unchecked"></i></span>
						<form:input path='endereco.cep' type='text' />
						<form:errors path='endereco.cep' />

					</div>
				</div>
				<div class="form-group">
					<label for="endereco.rua">rua</label>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-unchecked"></i></span>
						<form:input path='endereco.rua' type='text' />
						<form:errors path='endereco.rua' />

					</div>
				</div>
				<div class="form-group">
					<label for="endereco.bairro">bairro</label>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-unchecked"></i></span>
						<form:input path='endereco.bairro' type='text' />
						<form:errors path='endereco.bairro' />
					</div>
				</div>
				<div class="form-group">
					<label for="endereco.cidade">cidade</label>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-unchecked"></i></span>
						<form:input path='endereco.cidade' type='text' />
						<form:errors path='endereco.cidade' />
					</div>
				</div>
				<div class="form-group">
					<label for="endereco.estado">estado</label>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-unchecked"></i></span>
						<form:input path='endereco.estado' type='text' />
						<form:errors path='endereco.estado' />
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>
	</div>
</template:admin>
