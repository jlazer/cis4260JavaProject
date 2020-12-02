<%-- 
    Document   : index
    Created on : Nov 5, 2020, 2:56:14 PM
    Author     : justinLazarski
--%>
<jsp:include page="/includes/header.jsp" />


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QuickMart</title>
    </head>
    <body>
        <div>Homepage</div>
        
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:if test="${sqlStatement == null}">
            <c:set var="sqlStatement" value="select * from products" />
        </c:if>

        <h1>The SQL Gateway</h1>
        <p>Enter an SQL statement and click the Execute button.</p>

        <p><b>SQL statement:</b></p>
        <form action="sqlGateway" method="post">
            <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
            <input type="submit" value="Execute">
        </form>

        <p><b>SQL result:</b></p>
        ${sqlResult}
        
    </body>
</html>
