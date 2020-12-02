<%-- 
    Document   : index
    Created on : Dec 1, 2020, 10:19:55 PM
    Author     : Justin Lazarski
--%>
<jsp:include page="/includes/header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <h1>Shopping Cart</h1>
        <table>
            <tr>
            <th>Name</th>
            <th class="right">Price</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="product" items="${products}">
        <tr>
            <td><c:out value='${product.name}' /></td>
            <td class="right">${product.price}</td>
            <td><form action="cart" method="post">
                    <input type="hidden" name="productCode" 
                           value="${product.productID}">
                    <input type="submit" 
                           value="Add To Cart">
                </form></td>        
        </tr>
        </c:forEach>
        </table>
    </body>
</html>
