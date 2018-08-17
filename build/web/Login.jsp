
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


<!--<div align="center">
    <div class="container">
        <form action="Login" method="post">
            <h2>Login Form</h2> 
            User name : <input type="text" name="user"  required="required">
            Password : <input type="password" name="password"  required="required">
            <input type="submit" value="LOGIN"> 
        </form>
    </div>

</div>-->

<!--<br>-->



<!--<div class="content-bottom1">
    
    <div class="container">
        <div class="row content_bottom-text">
            <div class="col-md-7">
                <div class="main">
                    <div class="shop_top">
                        <div class="container">

                            <div class="row">
                                <div class="col-md-12 contact">
                                    <form method="post" action="Login">
                                        <div class="to">
                                            
                                            <input type="text" name="user" required="required" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Name';
                                                    }">
                                            <input type="text" name="password" required="required" class="text" value="Enter your password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'password';
                                                    }">
                                            <input type="text" name="user" required="required" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Subject';
                                                    }">
                                        </div>
                                        <div class="text">
                                            <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Message';
                                                    }">Message:</textarea>
                                            <div class="form-submit">
                                                <input name="fpassword" type="submit" value="FORGOT PASSWORD">
                                                Need to fix forgot password
                                                <input name="submit" type="submit" id="submit" value="LOGIN">
                                                <br>
                                        </div>
                                        
                                        <div class="clear"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>-->

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
