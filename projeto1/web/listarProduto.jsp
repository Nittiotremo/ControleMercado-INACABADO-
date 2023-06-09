<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="cabecalho.jsp"/>
<div class="card text-center">
    <div class="card-header">
        <h1>Produto</h1>
        <hr/>
        <div class="row">
            <div class="col-12">
                <a href="NovaProduto" class="btn btn-primary">Nova Produto</a>
                <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Voltar</a>
            </div>
        </div> 
        <hr/>
        <c:if test="${mensagem != null}">
        <div class="alert alert-primary" role="alert">
            ${mensagem}
        </div>
        </c:if>
    </div>
    <div class="card-body">
        <table class="table">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="produto" items="${Produtos}">
                    <tr>
                        <td>${produto.codigoprodutoa}</td>
                        <td>${produto.nomeproduto}</td>
                        <td><a class="btn btn-info" href="ConsultarProduto?codigoProduto=${produto.codigoproduto}">Alterar</a>
                        <a class="btn btn-danger" href="ExcluirProduto?codigoProduto=${produto.codigoproduto}">Excluir</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="rodape.jsp"/>
