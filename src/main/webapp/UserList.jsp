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
        <title>Aplicação BookStoreWeb Users</title>
    </head>
    <body>
        <!--        <style>
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
                </style>-->
        <br>

        <jsp:include page="contents/cabecalho.jsp"/>

        <jsp:include page="contents/headerTags.jsp"/>

        <div class = "container mt-3">
            <table class = "table table-striped">

                <caption><h2>List of Users</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>FullName</th>
                    <th>Password</th>
                </tr>

                <c:forEach var="user" items="${listaUsers}">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.email}" /></td>
                        <td><c:out value="${user.fullname}" /></td>
                        <td><c:out value="${user.password}" /></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${user.id}'/>">
                                Edit
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${user.id}'/>">
                                Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <jsp:include page="contents/rodape.jsp"/>

    </body>
</html>

