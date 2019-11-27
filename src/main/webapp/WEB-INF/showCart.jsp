<%--
  Created by IntelliJ IDEA.
  User: Алексей Владимирович
  Date: 27.11.2019
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show cart</title>
</head>
<body>
    <%@ page import="servlet.CartServlet" %>
    <%@ page import="model.Cart" %>

    <% Cart cart = (Cart) session.getAttribute("cart"); %>
    <p> Name: <%= cart.getName() %> </p>
    <p> Quantity: <%= cart.getQuantity() %> </p>

</body>
</html>
