<%-- 
    Document   : StaffGB
    Created on : Aug 21, 2018, 11:11:33 PM
    Author     : Pasindu
--%>

<jsp:include page="WEB-INF/proheader.jsp"/>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<!--<div class="content-bottom3">-->
<!--    <ol class="breadcrumb">
  <li class="breadcrumb-item active">Home</li>
</ol>
<ol class="breadcrumb">
  <li class="breadcrumb-item"><a href="#">Home</a></li>
  <li class="breadcrumb-item active">Library</li>
</ol>-->
<br>
<!--<div class="container">-->
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="StaffGB.jsp">Staff</a></li>
    <li class="breadcrumb-item active">Ground Booking</li>
</ol>
<!--</div>-->
<!--</div>-->
<br>
<!--<div class="const">
  
    <div class="btn-group btn-lg" role="group" aria-label="Button group with nested dropdown">
        <a href="Forum.jsp" role="button" class="btn btn-secondary">Forum</a>
        <a href="Staff.jsp" role="button" class="btn btn-secondary">Add Data</a>

  <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      View Data
    </button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="ViewPlayer.jsp">Player records</a>
      <a class="dropdown-item" href="ViewFreshers.jsp">Freshers results</a>
      <a class="dropdown-item" href="ViewFaculty.jsp">Faculty results</a>
      <a class="dropdown-item" href="ViewInterUni.jsp">Inter University results</a>
    </div>
  </div>
</div>
</div>-->

<div class="content-bottom3">
    <!--<h1>Profile : <% //out.println(username);%></h1>-->

    <!--    <div class="main">
            <div class="shop_top">-->

    <div class="container">
        <!--<p>Click on the buttons inside the tabbed menu:</p>-->

        <div class="tab">

            <button class="tablinks" onclick="openCity(event, 'Sport')" id="defaultOpen">Ground Booking Requests</button>
            <button class="tablinks" onclick="openCity(event, 'Sports-cordinator')">Sports-cordinator</button>
        </div>

 
        <div id="Sport" class="tabcontent">
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
                    <label for="time" class="col-sm-3 control-label">Time Period</label>
                    <div class="col-sm-7">
                        <input type="text" name="time" placeholder="Time period" class="form-control">
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

                <button type="submit" style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Send Request</button>
                <br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>                
            </form>
        </div>
        <div id="Sports-cordinator" class="tabcontent">
            <form method="post" action="AddStaff">
                <h2>Add Co-ordinator</h2>
                
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-7">
                        <input type="text" name="name" placeholder="Name" class="form-control" autofocus>
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Registration No" class="col-sm-3 control-label">Registration No</label>
                    <div class="col-sm-7">
                        <input type="text" name="rnumber" placeholder="Registration No" class="form-control" autofocus>
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
                    <label for="sport" class="col-sm-3 control-label">Sport</label>
                    <div class="col-sm-7">
                        <input type="text" name="sport" class="form-control">
                    </div>
                    <br>
                </div>
                <div class="form-group">
                    <label for="Year" class="col-sm-3 control-label">Year</label>
                    <div class="col-sm-7">
                        <input type="year" name="year" class="form-control">
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
            </form>
        </div>

        <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>

    </div>


</div>
<!--</div>
</div>
</div>
</div>-->


<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
