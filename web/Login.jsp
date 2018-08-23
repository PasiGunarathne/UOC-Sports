
<%-- 
   Document   : Login
   Created on : Mar 27, 2018, 11:37:44 AM
   Author     : Pasindu
--%>
<jsp:include page="WEB-INF/header.jsp"/>

<center>
    <!--<h1>Login Form</h1>-->

</center>
<!--<div class="page-top">
    
    <center>
         <h1>Login Page</h1>
    </center>
    
</div>-->
<%
//    if (session.getAttribute("username").equals("admin")) {
//        response.sendRedirect("Admin.jsp");
//    } else if (session.getAttribute("username").equals("Pasindu")) {
//        response.sendRedirect("Staff.jsp");
//    }
%>

<%
    String name = null;
    System.out.println(name);
%>

<div class="bodylogin">
    <div class="login-box">
        <img src="images/team1.jpg" class="avatar">
        <br>
        <br>
        <h1>Login here</h1>
        <br>
        <form method="post" action="Login">
            <p>Username</p>
            <input type="text" name="user" placeholder="Enter Username" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
            <a href="#">Forgot Password</a>

        </form>
    </div>
</div>


<jsp:include page="WEB-INF/footer.jsp"/>

</body>
</html>
