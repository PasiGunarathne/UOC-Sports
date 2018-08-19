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
<!--        <h1>Hello World!</h1>
        <form method="post" action="Logout">
                                            <li><a href="Login.jsp">RLogout</a></li>   
                                            <li><input type="submit" value="Logout"></li>   
                                            <li><button></button></li>   


                                        </form>-->
        <%
     
        response.sendRedirect("Logout");
        %>
    </body>
</html>
