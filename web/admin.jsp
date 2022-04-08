<%-- 
    Document   : admin
    Created on : Sep 21, 2021, 11:10:17 PM
    Author     : SnoweyMTT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%--
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            //xác thực, phân quyền
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
            //hiển thị giá trị tìm kiếm
            String search = (String) request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>
        --%>
        <%--<c:if test="${sessionScope.LOGIN_USER == null or sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>--%>
        <h1>Hello Admin <%--<%= loginUser.getFullName()%>--%> ${sessionScope.LOGIN_USER.fullName}</h1>


        <%--
                <form action="MainController">
                    <input type="submit" name="action" value="Logout"/>
                </form>
        --%>
        <c:url var="logoutLink" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
        <a href="${logoutLink}">Logout</a>
        <form action="MainController">
            Search <input type="text" name="search" value="<%--<%= search%>--%>${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <%--
        <%
                    List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
                    if (listUser != null) {
                        if (!listUser.isEmpty()) {
                %>
        --%>
        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%--
                                        <%
                                            int count = 1;
                                            for (UserDTO user : listUser) {
                                        %>
                        --%>
                        <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                        <form action="MainController">
                            <tr>
                                <td><%--<%= count++%>--%>${counter.count}</td>
                                <td>
                                    <%--<%= user.getUserID()%>--%>
                                    ${user.userID}
                                </td>
                                <td>
                                    <input type="text" name="fullName" value="${user.fullName}"/>    
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}"
                                </td>
                                <td>
                                    <%--<%= user.getPassword()%>--%>
                                    ${user.password}
                                </td>
                                <td>
                                    <%--<a href="MainController?action=Delete&userID=<%= user.getUserID()%>&search=<%= search%>">Delete</a>--%>
                                    <c:url var="deleteLink" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${deleteLink}">Delete</a>
                                </td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="userID" value="${user.userID}"/>
                                    <input type="hidden" name="search" value="${param.search}"/>

                                </td>
                            </tr>
                        </form>
                    </c:forEach>
                    <%--
                    <%
                                        }
                                    %>
                    --%>
                </tbody>
            </table>
            <%--
                    <%
                        String error = (String) request.getAttribute("ERROR");
                        if (error == null) {
                            error = "";
                        }
                    %>
                    <%= error%>
                    <%
                            }
                        }
                    %>
            --%>
            ${requestScope.ERROR}

        </c:if>
    </c:if>
</body>
</html>
