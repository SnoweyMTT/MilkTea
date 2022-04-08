<%-- 
    Document   : viewCart
    Created on : Oct 5, 2021, 11:09:28 PM
    Author     : SnoweyMTT
--%>

<%@page import="tea.Tea"%>
<%@page import="tea.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
    </head>
    <body>
        <h1>Your shopping cart:</h1>
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null) {
                if (cart.getCart().isEmpty()) {
        %>
        <p>There's nothing in your cart</p>
        <%
        } else {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Remove</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (Tea tea : cart.getCart().values()) {
                        total += tea.getPrice() * tea.getQuantity();
                %>
            <form action="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type="text" name="id" value="<%= tea.getId()%>" readonly=""/>
                    </td>
                    <td><%= tea.getName()%></td>
                    <td>
                        <input type="number" name="quantity" value="<%=tea.getQuantity()%>" min="1" required=""/>
                    </td>
                    <td><%= tea.getPrice()%>VND</td>
                    <td><%= tea.getPrice() * tea.getQuantity()%>VND</td>
                    <td>
                        <input type="submit" name="action" value="Remove"/>
                    </td>
                    <td>
                        <input type="submit" name="action" value="Edit"/>
                    </td>
                </tr>
            </form>
            <%
                }
            %>
        </tbody>
    </table>
    <h1>Total: <%= total%>VND</h1>
    <%
            }
        }
    %>

    <a href="shopping.jsp">Add More</a>
</body>
</html>
