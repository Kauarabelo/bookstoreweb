<%-- 
    Document   : BookForm
    Created on : 25 de abr de 2022, 13:56:02
    Author     : devsys-b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <head>
        <title>Aplicação Books Store User</title>
    </head>
    <body>
        <div class="container">
            <!--            <style>
            
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
                        </style>-->
            <br>
            <jsp:include page="contents/cabecalho.jsp"/>

            <jsp:include page="contents/headerTags.jsp"/>

            <div align="left">
                <c:if test="${book != null}">
                    <form action="update" method="post">
                    </c:if>
                    <c:if test="${book == null}">
                        <form action="insert" method="post">
                        </c:if>
                        <div class = "container mt-3">
                            <table class = "table table-striped">
                                <caption>
                                    <h2 style = text-decoration: none;>
                                        <c:if test="${book != null}">
                                            Editar Livro
                                        </c:if>
                                        <c:if test="${book == null}">
                                            Adicionar novo Livro
                                        </c:if>
                                    </h2>
                                </caption>
                                <c:if test="${book != null}">
                                    <input type="hidden" name="formId" value="<c:out value='${book.id}' />" />
                                </c:if>
                                <tr>
                                    <th>Email: </th>
                                    <td>
                                        <input type="text" name="formEmail" size="45" value="<c:out value='${book.titulo}' />"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>FullName: </th>
                                    <td>
                                        <input type="text" name="formFullname" size="45" value="<c:out value='${book.autor}' />"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Password: </th>
                                    <td>
                                        <input type="text" name="formPassword" size="5" value="<c:out value='${book.preco}' />"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="submit" value="Enviar" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>
            </div>

            <jsp:include page="contents/rodape.jsp"/> 
        </div>
    </body>
</html>