
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Admin.jsp">Admin</a></li>
    <li class="breadcrumb-item active">Add Staff</li>
</ol>


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--<div class="page-top">

    <center>
        <h1><a href="Admin.jsp">Admin Page</a></h1>
    </center>

</div>-->

<br>

<div> 
    <aside class="col-md-3" margin-top="10%">
        <ul class="list-group submenu">
            <li class="list-group-item"><a href="AddStaff.jsp">Add Staff</a></li>
            <li class="list-group-item"><a href="Edit_staff.jsp">Edit Staff</a></li>
            <li class="list-group-item"><a href="AddSport.jsp">Add Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="SponsorRequest.jsp">Sponsorships Requests</a></li>
        </ul>
    </aside>
</div>

<div style="margin-left:25%" class="container">
            <form method="post" action="AddStaff">
                <h2>Ground booking Request</h2>
                
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Topic</label>
                    <div class="col-sm-7">
                        <input type="text" name="name" placeholder="Name" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Request Person" class="col-sm-3 control-label">Request Person</label>
                    <div class="col-sm-7">
                        <input type="text" name="rperson" placeholder="Request Person" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email </label>
                    <div class="col-sm-7">
                        <input type="email" name="email" placeholder="Email" class="form-control">
                    </div>
                    <br>
                </div>

                <div class="form-group">
                    <label for="Password" class="col-sm-3 control-label">Contact No</label>
                    <div class="col-sm-7">
                        <input type="text" id="password" name="password" placeholder="Password" class="form-control" />
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Request Detais" class="col-sm-3 control-label">Request Detais</label>
                    <div class="col-sm-7">
                        <input type="text" name="reqdet" placeholder="Request Detais" class="form-control"  />
                    </div>
                    <br>
                </div>
                
                <div class="form-group">
                    <label for="sport" class="col-sm-3 control-label">Sport</label>
                    <div class="col-sm-7">
                        <input type="text" name="sport" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">Date</label>
                    <div class="col-sm-7">
                        <input type="year" name="date" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="time" class="col-sm-3 control-label">Time</label>
                    <div class="col-sm-7">
                        <input type="time" name="time" placeholder="Time" class="form-control">
                    </div>
                    <br>
                </div> 
                <div class="form-group">
                    <label for="Description" class="col-sm-3 control-label">Description</label>
                    <div class="col-sm-7">
                        <input type="text" name="description" placeholder="Description" class="form-control">
                    </div>
                    <br>
                </div> 

                <button type="submit" style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Register</button>
                <br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>                
            </form> <!-- /form -->
        </div> <!-- ./container -->

<!--                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>
                    </div>-->
</div>
<br>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
