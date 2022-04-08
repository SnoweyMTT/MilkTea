<%-- 
    Document   : login
    Created on : Sep 21, 2021, 10:40:27 PM
    Author     : SnoweyMTT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID"/><br>
            Password <input type="password" name="password"/><br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form>
<%--        
    <%
        String error = (String) request.getAttribute("ERROR");
        if (error == null) {
            error = "";
        }
    %>
        <%= error%> 
--%>
        ${requestScope.ERROR}
        <a href="createUser.jsp">Create new User</a><br>
        <a href="shopping.jsp">Shopping</a>
    </body>
</html>
