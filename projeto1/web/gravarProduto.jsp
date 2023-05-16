<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="cabecalho.jsp"/>
<div class="card">
    <div class="card-header text-center">
        <h1>Gravar Produto</h1>
    </div>
    <div class="card-body">
        <form action="GravarProduto" method="post">
            <div class="row">
                <div class="col-6">
                    <label for="codigoProduto">Código:</label>
                    <input type="text" id="codigoProduto" class="form-control" name="codigoProduto" value="${produto.codigoProduto == 0 ? "" : produto.codigop0roduto}" readonly />
                </div>
                <div class="col-6">
                    <label for="nomeProduto">Nome: </label>
                    <input type="text" id="nomeProduto" class="form-control" name="nomeProduto" value="${produto.nomeproduto}" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12 text-center">
                    <button type="submit" class="btn btn-success">Cadastrar</button>
                    <a href="ListarProduto" class="btn btn-secondary">Voltar</a>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="rodape.jsp"/>
