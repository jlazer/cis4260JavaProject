<%-- 
    Document   : index
    Created on : Dec 1, 2020, 7:12:01 PM
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
        <title>Drinks</title>
    </head>
    <body>
        <h1>Drinks</h1>
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3307/quick_mart"
        user="root" password="sesame"
        />
        <sql:query var="list_Products"   dataSource="${myDS}">
        SELECT * FROM products where categoryID = 1;
        </sql:query>
     
    <div align="center">
        <table class="sortable" border="6px blue" cellpadding="5" style="width: 80%" border-collapse="collapse">
            <caption><h2>List of Drinks</h2></caption>
            <tr>
                <th>Product Number</th>
                <th>Name</th>
                <th>Price</th>
                <th>&nbsp;</th>
                
            </tr>
            <c:forEach var="product" items="${list_Products.rows}">
                <tr>
                    <td><c:out value="${product.productNumber}" /></td>
                    <td><c:out value="${product.name}" /></td>
                    <td>$<c:out value="${product.price}" />  </td>
                    <td><form action="<c:url value='/order/addItem'/>" method="post">    
                    <input type="hidden" name="productNumber" 
                           value="${product.productNumber}">
                    <input type="submit" 
                           value="Add To Cart">
                </form></td>
                
                    
                </tr>
            </c:forEach>
        </table>
    </div>
        

        
    </body>
</html>
