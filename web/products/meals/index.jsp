<%-- 
    Document   : index
    Created on : Dec 1, 2020, 7:11:52 PM
    Author     : Justin Lazarski
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<jsp:include page="/includes/header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meals</title>
    </head>
    <body>
        <h1>Meals</h1>
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3307/quick_mart"
        user="root" password="sesame"
        />
        <sql:query var="list_Products"   dataSource="${myDS}">
        SELECT * FROM products where categoryID = 2;
        </sql:query>
     
    <div align="center">
        <table class="sortable" border="6px blue" cellpadding="5" style="width: 80%" border-collapse="collapse">
            <caption><h2>List of Meals</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Details</th>
            </tr>
            <c:forEach var="product" items="${list_Products.rows}">
                <tr>
                    <td><c:out value="${product.productNumber}" /></td>
                    <td><c:out value="${product.name}" /></td>
                    <td>$<c:out value="${product.price}" /></td>
                    <td><c:out value="${product.details}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
        

        
    </body>
</html>
