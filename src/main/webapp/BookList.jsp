<%-- 
    Document   : BookList
    Created on : 20 de abr de 2022, 09:41:12
    Author     : devsys-b
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aplicação BookStoreWeb</title>
    </head>
    <body>

        <br>

        <jsp:include page="contents/cabecalho.jsp"/>

        <jsp:include page="contents/headerTags.jsp"/>

        <div class = "container mt-3">
            <table class = "table table-striped">

                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>

                <c:forEach var="book" items="${listaBook}">
                    <tr>
                        <td><c:out value="${book.id}" /></td>
                        <td><c:out value="${book.titulo}" /></td>
                        <td><c:out value="${book.autor}" /></td>
                        <td><c:out value="${book.preco}" /></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/bstore/edit?id=<c:out value='${book.id}'/>">
                                Editar
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="<%=request.getContextPath()%>/bstore/delete?id=<c:out value='${book.id}'/>">
                                Excluir
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <jsp:include page="contents/rodape.jsp"/>

    </body>
</html>

