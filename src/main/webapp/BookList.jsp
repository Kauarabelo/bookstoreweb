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
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap');
            
            body{
                text-align: center;
                font-family: 'Ubuntu', sans-serif;
            }
            
            h1{
                font-size: 50px;
            }
            
            h2{
                
                font-size: 35px;
                
            }
            
            table{
                
               itens-align: center;
               border: 3px solid black;
               border-radius: 20px;
               margin: auto;
            }
            
            table th{
                border-radius: 20px;
                border: 2px solid black;
                
            }
            
            table td{
                
                border-radius: 10px;
                
            }
            
            p a{
                
                text-decoration: none;
                margin: 6px;
                
            }
        </style>
        <br>
        <h1>Aplicação BookStoreWeb</h1>
        <p><a href="<%=request.getContextPath()%>/new">Adicionar novo Livro</a>
        <a href="<%=request.getContextPath()%>/list">Lista todos Livros</a></p>

        <table border="1" cellpadding="5">
            <caption><h2>List of Books</h2></caption>
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
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${book.id}'/>", style = text-decoration: none;>Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${book.id}'/>", style = text-decoration: none;>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

