<%-- 
    Document   : shopping
    Created on : Oct 5, 2021, 10:37:32 PM
    Author     : SnoweyMTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>It's time for tea</h1>
        <form action="MainController">
            Choose your teas: <br>
            <select name="cmbTea">
                <option value="T01-O Long Tea-50">O Long Tea</option>
                <option value="T02-Black Tea-10">Black Tea</option>
                <option value="T03-Matcha-40">Matcha</option>
                <option value="T04-Pink Tea-20">Pink Tea</option>
            </select>
            <input type="number" name="quantity" value="1" min="1"/>
            <input type="submit" name="action" value="Select"/>
            <input type="submit" name="action" value="View"/>
        </form>
        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null)  message = ""; 
        %>
        <h1>
            <%= message%>
        </h1>
    </body>
</html>
