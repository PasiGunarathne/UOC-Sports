 <%-- 
    Document   : Login
    Created on : Mar 27, 2018, 11:37:44 AM
    Author     : Pasindu
--%>
<jsp:include page="WEB-INF/header.jsp"/>

    <center>
        <h1>Hello java EE</h1>
        
    </center>
    
    
    <div align="center">
            <div class="container">
                <form action="Login" method="post">
                    <h2>Login Form</h2>
                User name : <input type="text" name="user"  required="required">
                Password : <input type="password" name="password"  required="required">
                <input type="submit" value="LOGIN"> 
            </form>
            </div>
          
        </div>

        <%--<jsp:include page="WEB-INF/footer.jsp"/>--%>
        
    </body>
</html>
