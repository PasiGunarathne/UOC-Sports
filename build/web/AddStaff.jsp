
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
            <li class="list-group-item"><a href="EditSport.jsp">Edit Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="SponsorRequest.jsp">Sponsorship Requests</a></li>
            <li class="list-group-item"><a href="VeiwForum.jsp">Forums</a></li>
            <li class="list-group-item"><a href="UpComingEvents.jsp">Add Event</a></li>
        </ul>
    </aside>
</div>

<div style="margin-left:25%" class="container">
            <form method="post" action="AddStaff">
                <h2>Add Staff</h2>
                
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-7">
                        <input type="text" name="name" placeholder="Name" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="NIC" class="col-sm-3 control-label">NIC</label>
                    <div class="col-sm-7">
                        <input type="text" name="nic" placeholder="NIC" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email </label>
                    <div class="col-sm-7">
                        <input type="email" name="email" placeholder="Email" class="form-control" name= "email">
                    </div>
                    <br>
                </div>

                <div class="form-group">
                    <label for="Password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-7">
                        <input type="password" id="password" name="password" placeholder="Password" class="form-control" onkeyup='check();' />
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Password" class="col-sm-3 control-label">Confirm Password</label>
                    <div class="col-sm-7">
                        <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="form-control" onkeyup='check();' />
                        
                
                        
                        <span id='message'></span>
                    </div>
                    <br>
                </div> 
<script>
                    var check = function() {
                      if (document.getElementById('password').value ==
                        document.getElementById('confirm_password').value) {
                        document.getElementById('message').style.color = 'green';
                        document.getElementById('message').innerHTML = 'matching';
                      } else {
                        document.getElementById('message').style.color = 'red';
                        document.getElementById('message').innerHTML = 'not matching';
                      }
                    }

                    
                </script>
                
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-7">
                        <input type="date" name="birthDate" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Joined Date" class="col-sm-3 control-label">Joined Date</label>
                    <div class="col-sm-7">
                        <input type="date" name="joined_date" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="ContactNumber" class="col-sm-3 control-label">Contact number </label>
                    <div class="col-sm-7">
                        <input type="ContactNumber" name="contact_number" placeholder="Phone number" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Address" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-7">
                        <input type="text" name="address" placeholder="Address" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Staff Type</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="staff_type" value="d_entry">Data entry
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="staff_type" value="g_booking">Ground Booking
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="staff_type" value="s_codntr">Sport Co-ordinator
                                </label>
                            </div>
                        </div>
                        <br>
                    </div>
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
