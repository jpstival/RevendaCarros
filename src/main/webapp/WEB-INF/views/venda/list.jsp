<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
<jsp:attribute name="extraStyles">
<link rel="stylesheet" href="<c:url value='/assets/css/pagination/jqpagination.css'/>" />
</jsp:attribute>
<jsp:attribute name="extraScripts">
<script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
</jsp:attribute>
<jsp:body>
  <div>
    <div class ="container min-container">
      <h2 class="basic-title">Vendas</h2>
        <div class="well">
          <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
	                  	<td>id</td>
		                  	<td>comprador</td>
		                  	<td>preco</td>
						<td>actions</td>
	                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${paginatedList.currentList}' var='object'>         		
	                  <tr>
						<td><a href="<c:url value='/pessoa'/>/${object.id}">${object.id}</a></td>
		                  	<td>${object.comprador}</td>
		                  	<td>${object.preco}</td>
		                  	<br>
	                    <td><a href="<c:url value='/pessoa/remove'/>/${object.id}">Remove</a></td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
		  
          <a href="<c:url value='/venda/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span>Nova Pessoa</a>
          <template:paginationComponent paginatedList="${paginatedList}" page="${param.page}" action="/venda"/>
        </div>
    </div>
  </div>
</jsp:body>
</template:admin>
