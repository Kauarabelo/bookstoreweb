<%-- 
    Document   : cabecalho
    Created on : 27 de abr de 2022, 10:01:25
    Author     : devsys-b
--%>

<!-- Inicio cabecalho-->

<div class=" p-4 bg-primary text-white text-center"><h1>Aplicação BookStore</h1>

<div class = "col-6 mx-auto">
    
    <a href="<%=request.getContextPath()%>/bstore/new" class="btn btn-outline-light">
        <span class="glyphicon glyphicon-plus"></span>Adicionar novo Livro</a>

    <a href="<%=request.getContextPath()%>/bstore/list" class="btn btn-outline-light ">
        <span class="glyphicon glyphicon-th-list"></span>
        Lista todos Livros</a>
    
    <a href="<%=request.getContextPath()%>/bsuser/list" class="btn btn-outline-light ">
        <span class="glyphicon glyphicon-th-list"></span>
        Listar usuarios</a>
    <a href="<%=request.getContextPath()%>/logout" class="btn btn-outline-light ">
        <span class="glyphicon glyphicon-th-list"></span>
        Sair</a>

</div>
        </div>

<!-- Fim cabecalho-->