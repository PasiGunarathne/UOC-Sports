
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Admin.jsp">Admin</a></li>
    <li class="breadcrumb-item active">Add Sport</li>
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
            <form method="post" action="AddSport">
                <h3>Add Sport</h3>
                
                <div class="form-group">
                    <label for="Sport Name" class="col-sm-3 control-label">Sport Name</label>
                    <div class="col-sm-7">
                        <input type="text" name="sport_name" placeholder="Sport Name" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Captain" class="col-sm-3 control-label">Captain</label>
                    <div class="col-sm-7">
                        <input type="text" name="captain" placeholder="Captain" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Vice-Captain" class="col-sm-3 control-label">Vice-Captain</label>
                    <div class="col-sm-7">
                        <input type="text" name="vice_captain" placeholder="Vice-Captain" class="form-control">
                    </div>
                    <br>
                </div>
                
                <div class="form-group">
                    <label for="Coach" class="col-sm-3 control-label">Coach</label>
                    <div class="col-sm-7">
                        <input type="text" name="coach" placeholder="Coach" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="In-Charge" class="col-sm-3 control-label">In-Charge</label>
                    <div class="col-sm-7">
                        <input type="text" name="in_charge" placeholder="In-Charge" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Booked-Time" class="col-sm-3 control-label">Booked-Time</label>
                    <div class="col-sm-7">
                        <input type="text" name="booked_time" placeholder="Booked-Time" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Achievements" class="col-sm-3 control-label">Achievements</label>
                    <div class="col-sm-7">
                        <input type="text" name="achievements" placeholder="Achievements" class="form-control">
                    </div>
                    <br>
                    <br>
                </div>

                <button type="submit"  style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Submit</button>
                
                <br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>                
            </form> 
        </div>
</div>
<br>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
