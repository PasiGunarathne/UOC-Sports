<%-- 
    Document   : Registration
    Created on : Mar 26, 2018, 8:43:01 PM
    Author     : Pasindu
--%>
<jsp:include page="WEB-INF/proheader.jsp"/>


<!--<center>

    <h2>Registration Form</h2>
</center>-->

<!--<div align="center">
    <form action="Registration" method="post">
        User name : <input type="text" name="user" required="required">
        Password : <input type="password" name="password" required="required">
        <input type="submit" value="REGISTER"> 
    </form>

    </div>-->
<!--<div class="page-top">

    <center>
        <h1><a href="Admin.jsp">Admin Page</a></h1>
    </center>

</div>-->



<div class="content-bottom2">

    <!--    <div class="main">
            <div class="shop_top">-->
    <div class="container">

        <!--                <div class="row">
                            <div class="col-md-12 contact">-->
        <form method="post" action="Registration">
            <div class="to">
                <p>Name :</p> <input type="text" name="user" required="required" class="text" value="Name" onfocus="this.value = '';" onblur=" if (this.value == '')">
                <p>Password :</p> <input type="text" name="password" required="required" class="text" value="Enter your password" onfocus="this.value = '';" onblur="if (this.value == '')">
                <p>Subject :</p><input type="text" name="user" required="required" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') /*{this.value = 'Subject';}*/">
                <input type="text" name="user" required="required" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '')">
                <input type="text" name="user" required="required" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '')">

            </div>
            <div class="text">
                <p>Message :</p><textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '')
                                          ">Message:</textarea>
                <!--Need to delete those default values-->
                <div class="form-submit">
                    <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func() "><br>

                </div>

            </div>
            <div class="clear"></div>
        </form>
        <script>
            function Func() {
                alert("You registered successfully!");
            }
        </script>
    </div>
</div>
<!--</div>
</div>
</div>
</div>-->

<!--<button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#myModal">Report</button>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Report this Post :</h4>
            </div>
            <div class="modal-body">
                <p>Do you want to report this post?</p>

                 <button type="submit" name="no" class="btn-default"> No </button> 

            </div>
            <div class="modal-footer">
                <button type="submit" name="yes" class="btn btn-default"  data-toggle="modal" data-target="#myModal1" data-dismiss="modal"> Yes </button>
                 <input type="submit" name="yesw" value="Submit"  /> 



                <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
            </div>
        </div>

    </div>
</div>-->

<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
