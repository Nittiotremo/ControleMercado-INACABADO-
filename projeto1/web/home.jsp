<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="cabecalho.jsp"/>
<div class="card text-center">
    <div class="card-header">
        <h1>Menu principal</h1>
        <h3>Bem-vindo(a) ${sessionScope.usuario.nomeUsuario}! Você está logado(a) como ${sessionScope.usuario.perfilUsuario}</h3>
    </div>
    <div class="card-body">
        <a href="ListarMarca" class="btn btn-primary">Marca</a>
        <a href="ListarProduto" class="btn btn-secondary">Produto</a>
    </div>
</div>
<jsp:include page="rodape.jsp"/>
