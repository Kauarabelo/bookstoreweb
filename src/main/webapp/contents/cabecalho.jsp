<%-- 
    Document   : cabecalho
    Created on : 27 de abr de 2022, 10:01:25
    Author     : devsys-b
--%>

<!-- Inicio cabecalho-->

<div class="container-fluid p-5 bg-primary text-white text-center"><h1>Aplica��o BookStore</h1></div>

<p>
    <a href="<%=request.getContextPath()%>/new" class="btn btn-outline-primary">
        <span class="glyphicon glyphicon-plus"></span>Adicionar novo Livro</a>

    <a href="<%=request.getContextPath()%>/list" class="btn btn-outline-primary">
        <span class="glyphicon glyphicon-th-list"></span>
        Lista todos Livros</a>
</p>

<!-- Fim cabecalho-->