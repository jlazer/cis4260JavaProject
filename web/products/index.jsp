<%-- 
    Document   : index
    Created on : Dec 1, 2020, 5:51:39 PM
    Author     : Justin Lazarski
--%>

<jsp:include page="/includes/header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Products</h1>
        <ul>
            <li><a href="snacks/index.jsp">Snacks</a></li>
            <li><a href="meals/index.jsp">Meals</a></li>
            <li><a href="drinks/index.jsp">Drinks</a></li>

        </ul>

        
       <%--${displayProducts}--%>
        
        
    </body>
</html>
