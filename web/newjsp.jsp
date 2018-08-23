<%-- 
    Document   : newjsp
    Created on : May 22, 2018, 8:48:32 AM
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
        <h1>Simple Calculator</h1>

        <div class="container">
            <form action="square1" method="post">
                First Number <input name="N" type="text" required="" /> 
                Second Number <input name="M" type="text" required="" /> 
                <input type="submit">


            </form>
        </div>

    </body>
</html>
