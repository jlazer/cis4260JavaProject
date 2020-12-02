<%-- 
    Document   : cart
    Created on : Dec 1, 2020, 10:53:05 PM
    Author     : Justin Lazarski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart!</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Your cart</h1>
    <table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>
      <c:forEach var="item" items="${cart.items}">
      <tr>
        <td>
            <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.code}'/>">
                <input type=text name="quantity" 
                       value="<c:out value='${item.quantity}'/>"  
                       id="quantity">
                <input type="submit" value="Update">
            </form>
        </td>
        <td><c:out value='${item.product.description}'/></td>
        <td>${item.product.priceCurrencyFormat}</td>
        <td>${item.totalCurrencyFormat}</td>
        <td>
            <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.code}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity 
        and click on the Update button.</p>

    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Checkout">
    </form>
    </body>
</html>