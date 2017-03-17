<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>

  <div>
    <div class ="container min-container">
      <h2 class="basic-title">Tela inical</h2>
        <div class="well">
          <a href="<c:url value='/pessoa/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Pessoa</a>
          <a href="<c:url value='/pessoa'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Listar Pessoas</a>
          <a href="<c:url value='/endereco/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Endereco</a>
          <a href="<c:url value='/endereco'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Listar Enderecos</a>
          <a href="<c:url value='/telefone/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Telefone</a>
          <a href="<c:url value='/telefone'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Listar Telefones</a>
          <a href="<c:url value='/carro/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Cadastrar Carro</a>
          <a href="<c:url value='/carro'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Listar Carros</a>                    
        </div>
    </div>
  </div>
