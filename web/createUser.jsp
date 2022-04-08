<%-- 
    Document   : createUser
    Created on : Sep 30, 2021, 10:38:33 PM
    Author     : SnoweyMTT
--%>

<%@page import="user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User Page</title>
    </head>
    <body>
<%--
<%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError("", "", "", "", "");
            }
        %>
--%>
        <h1>Create New User</h1>
        <form action="MainController" method="POST">
            User ID (*): <input type="text" name="userID" required=""/>
            <%--<%= userError.getUserID() %>--%>
            ${requestScope.USER_ERROR.userID}<br>
            Full Name (*): <input type="text" name="fullName" required=""/>
            <%--<%= userError.getFullName() %>--%>
            ${requestScope.USER_ERROR.fullName}<br>
            Password (*): <input type="password" name="password" required=""/>
            <%--<%= userError.getPassword() %>--%>
            ${requestScope.USER_ERROR.password}<br>
            Confirm (*): <input type="password" name="confirm" required=""/>
            <%--<%= userError.getConfirm() %>--%>
            ${requestScope.USER_ERROR.confirm}<br>
            Role ID (*): 
            <select name="roleID">
                <option value=""></option>
                <option value="US">User</option>
                <option value="GU">Guest</option>
                <option value="ST">Student</option>
            </select><br>
            ${requestScope.USER_ERROR.roleID}
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
        </form>
    </body>
</html>
