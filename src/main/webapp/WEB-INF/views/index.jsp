<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
  <div>
    <div class ="container min-container">
      <h2 class="basic-title">Tela inical</h2>
        <div class="well">
          <a href="<c:url value='/pessoa/form'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Pessoa</a>
          <a href="<c:url value='/pessoa'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Listar Pessoa</a> <br><br>
          <a href="<c:url value='/telefone/form'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Telefone</a>
          <a href="<c:url value='/telefone'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Listar Telefones</a> <br><br>
          <a href="<c:url value='/carro/form'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Carro</a>
          <a href="<c:url value='/carro'/>" class="btn btn-success" style="width: 200px"><span class="glyphicon glyphicon-plus-sign"></span>Listar Carros</a> <br>           
        </div>
    </div>
  </div>
</template:admin>