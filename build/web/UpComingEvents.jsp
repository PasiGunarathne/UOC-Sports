
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Admin.jsp">Admin</a></li>
    <li class="breadcrumb-item active">Add Up Coming Events</li>
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
            <li class="list-group-item"><a href="EditSport.jsp">Edit Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="SponsorRequest.jsp">Sponsorship Requests</a></li>
            <li class="list-group-item"><a href="VeiwForum.jsp">Forums</a></li>
            <li class="list-group-item"><a href="UpComingEvents.jsp">Add Event</a></li>
        </ul>
    </aside>
</div>
 <!--enctype="multipart/form-data"-->

<div style="margin-left:25%" class="container">
            <form method="post" action="AddEvent">
                <h3>Add Event</h3>
                
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-7">
                        <input type="text" name="event_name" placeholder="Event Name" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Date" class="col-sm-3 control-label">Date</label>
                    <div class="col-sm-7">
                        <input type="date" name="date" placeholder="date" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Venue" class="col-sm-3 control-label">Venue</label>
                    <div class="col-sm-7">
                        <input type="text" name="venue" placeholder="Venue" class="form-control">
                    </div>
                    <br>
                </div>
                
                <div class="form-group">
                    <label for="Contact person" class="col-sm-3 control-label">Contact person</label>
                    <div class="col-sm-7">
                        <input type="text" name="c_person" placeholder="Contact Person" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Contact" class="col-sm-3 control-label">Contact</label>
                    <div class="col-sm-7">
                        <input type="text" name="contact" placeholder="Contact" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-7">
                        <input type="email" name="email" placeholder="Email" class="form-control">
                    </div>
                    <br>
                </div>
<!--                <div class="form-group">
                    <label for="File" class="col-sm-3 control-label">File</label>
                    <div class="col-sm-7">
                        <input type="file" name="file" placeholder="" class="">
                    </div>
                    <br>
                </div>-->
<!--                <div class="form-group">
                    <label for="File Description" class="col-sm-3 control-label">File Description</label>
                    <div class="col-sm-7">
                        <input type="text" name="description" placeholder="File Description" class="form-control">
                    </div>
                    <br>
                </div>-->
                <div class="form-group">
                    <label for="Details" class="col-sm-3 control-label">Details</label>
                    <div class="col-sm-7">
                        <input type="text" name="details" placeholder="Details" class="form-control">
                    </div>
                    <br>
                    <br>
                </div>

                <button type="submit"  style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Submit</button>
                
                <br>
<!--                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>                -->
            </form> 
        </div>
</div>
<br>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
