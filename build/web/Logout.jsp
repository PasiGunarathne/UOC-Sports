<%-- 
    Document   : Logout
    Created on : Aug 17, 2018, 1:58:06 PM
    Author     : Pasindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.removeAttribute("Adusername");
        session.invalidate();
        response.sendRedirect("Login.jsp");
        %>
    </body>
</html>
