<%-- 
    Document   : Registration
    Created on : Mar 26, 2018, 8:43:01 PM
    Author     : Pasindu
--%>
<jsp:include page="WEB-INF/header.jsp"/>


<center>
    <h1>Hello java EE</h1>
    <h2>Registration Form</h2>
</center>

<!--<div align="center">
    <form action="Registration" method="post">
        User name : <input type="text" name="user" required="required">
        Password : <input type="password" name="password" required="required">
        <input type="submit" value="REGISTER"> 
    </form>

</div>-->

<div class="main">
    <div class="shop_top">
        <div class="container">

            <div class="row">
                <div class="col-md-12 contact">
                    <form method="post" action="Registration">
                        <div class="to">
                            <input type="text" name="user" required="required" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Name';
                                        }">
                            <input type="text" name="password" required="required" class="text" value="Enter your password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'password';}">
                            <input type="text" name="user" required="required" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Subject';
                                        }">
                        </div>
                        <div class="text">
                            <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {
                                       this.value = 'Message';
                                   }">Message:</textarea>
                            <div class="form-submit">
                                <input name="submit" type="submit" id="submit" value="Submit"><br>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
