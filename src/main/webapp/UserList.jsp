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
                    <th>Ações</th>
                </tr>

                <c:forEach var="us" items="${listaUsers}">
                    <tr>
                        <td><c:out value="${us.id}" /></td>
                        <td><c:out value="${us.email}" /></td>
                        <td><c:out value="${us.fullname}" /></td>
                        <td><c:out value="${us.password}" /></td>
                        
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

