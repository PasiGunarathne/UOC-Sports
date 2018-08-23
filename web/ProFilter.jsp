<%-- 
    Document   : ProFilter
    Created on : Aug 17, 2018, 2:09:03 PM
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
            if(session.getAttribute("username") == null) {
              response.sendRedirect("Login.jsp");  
            }
            else if (session.getAttribute("username").equals("admin") ) {
                response.sendRedirect("Admin.jsp");
            }
            else if (session.getAttribute("username").equals("Pasindu") ) {
                response.sendRedirect("Staff.jsp");
            }
           
            else {
                response.sendRedirect("StaffGB.jsp");
            }
        %>
    </body>
</html>
