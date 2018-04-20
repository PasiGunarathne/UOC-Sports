<%-- 
    Document   : Staff
    Created on : Mar 27, 2018, 1:59:43 PM
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
        <%String username = request.getParameter("user"); %>
        
        <h1>Hello <%out.println(username);%>!</h1>
        <a href="Login.jsp">LogOut</a>
    </body>
</html>
