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
<div class="const">

    <div class="btn-group btn-lg" role="group" aria-label="Button group with nested dropdown">
        <a href="ForumGB.jsp" role="button" class="btn btn-secondary">Forum</a>
        <a href="StaffGB.jsp" role="button" class="btn btn-secondary">Add Data</a>

        <div class="btn-group" role="group">
            <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                View Data
            </button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item" href="ViewPlayer.jsp">Player records</a>
                <a class="dropdown-item" href="ViewSportsCo.jsp">Sports Coordinator records</a>
            </div>
        </div>
    </div>
</div>

<div class="content-bottom3">
    <!--<h1>Profile : <% //out.println(username);%></h1>-->

    <!--    <div class="main">
            <div class="shop_top">-->

    <div class="container">
        <!--<p>Click on the buttons inside the tabbed menu:</p>-->

        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'player')" id="defaultOpen">Add Player</button>
            <button class="tablinks" onclick="openCity(event, 'Sport')">Ground Booking Requests</button>
        </div>

        <div id="player" class="tabcontent">
            <!--            <h3>London</h3>
                        <p>London is the capital city of England.</p>-->
            <!--<div class="container">-->

            <!--                <div class="row">
                                <div class="col-md-12 contact">-->
            <form method="post" action="Player">
                <div class="to">
                    <br>
                    <p>Full Name : <input type="text" name="name" required="required" class="text1" value="full name" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>

                    <br>
                    <p>Registration number : <input type="text" name="rno" required="required" class="text1" value="Registration no" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>
                    <p>National Id : <input type="text" name="nid" required="required" class="text1" value="National Id" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>
                    <p>Contact number : <input type="text" name="cno" required="required" class="text1" value="Contact no" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>
                    <p> Player Age : <input type="text" name="age" required="required" class="text1" value="Age" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>
                    <p>Email Address : <input type="text" name="email" required="required" class="text1" value="Email address" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>


                    <br>
                    <p>Player position : <input type="text" name="position" required="required" class="text1" value="Position" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>
                    <p>Enter Year : <input type="text" name="year" required="required" class="text1" value="Year" onfocus="this.value = '';" onblur="if (this.value == '')">
                    </p>

                </div>
                <br>
                <br><br>
                <div class="text">
                    <p>Faculty : <select name="faculty">
                            <option>Select a Faculty</option>
                            <option value="UCSC">UCSC</option>
                            <option value="Faculty of Science">Faculty of Science</option>
                            <option value="Faculty of Management">Faculty of Management</option>
                            <option value="Faculty of Art">Faculty of Art</option>
                            <option value="Faculty of Education">Faculty of Education</option>
                            <option value="Faculty of Medicine">Faculty of Medicine</option>
                            <option value="Faculty of Nursing">Faculty of Nursing</option>
                            <option value="Faculty of Technology">Faculty of Technology</option>
                            <option value="IIM">IIM</option>
                            <option value="Sripali">Sripali</option>
                        </select></p>
                    <br><br>
                    <p>Sport : <select name="sport">
                            <option>Select a Sport</option>
                            <option value="Volleyball (Men)">Volleyball (Men)</option>
                            <option value="Volleyball (Women)">Volleyball (Women)</option>
                            <option value="Beach Volleyball (Men)">Beach Volleyball (Men)</option>
                            <option value="Beach Volleyball (Women)">Beach Volleyball (Women)</option>
                            <option value="Rowing (Men)">Rowing (Men)</option>
                            <option value="Rowing (Women)">Rowing (Women)</option>
                            <option value="Rugby (Men)">Rugby (Men)</option>
                            <option value="Rugby (Women)">Rugby (Women)</option>
                            <option value="Netball">Netball</option>
                            <option value="Chess (Men)">Chess (Men)</option>
                            <option value="Chess (Women)">Chess (Women)</option>
                            <option value="Tennis (Men)">Tennis (Men)</option>
                            <option value="Tennis (Women)">Tennis (Women)</option>
                            <option value="Elle (Men)">Elle (Men)</option>
                            <option value="Elle (Women)">Elle (Women)</option>
                            <option value="Carrom (Men)">Carrom (Men)</option>
                            <option value="Carrom (Women)">Carrom (Women)</option>
                            <option value="Scrabble (Men)">Scrabble (Men)</option>
                            <option value="Scrabble (Women)">Scrabble (Women)</option>
                            <option value="Cricket (Men)">Cricket (Men)</option>
                            <option value="Cricket (Women)">Cricket (Women)</option>
                            <option value="Baseball">Baseball</option>
                            <option value="Football">Football</option>
                            <option value="Taekwondo (Men)">Taekwondo (Men)</option>
                            <option value="Taekwondo (Women)">Taekwondo (Women)</option>
                            <option value="Badminton (Men)">Badminton (Men)</option>
                            <option value="Badminton (Women)">Badminton (Women)</option>
                            <option value="Karate (Men)">Karate (Men)</option>
                            <option value="Karate (Women)">Karate (Women)</option>
                            <option value="Road Race">Road Race</option>
                            <option value="Track & Field (Men)">Track & Field (Men)</option>
                            <option value="Track & Field (Women)">Track & Field (Women)</option>
                            <option value="Basketball (Men)">Basketball (Men)</option>
                            <option value="Basketball (Women)">Basketball (Women)</option>
                            <option value="Wrestling">Wrestling</option>
                            <option value="Hockey (Men)">Hockey (Men)</option>
                            <option value="Hockey (Women)">Hockey (Women)</option>
                            <option value="Swimming (Men)">Swimming (Men)</option>
                            <option value="Swimming (Women)">Swimming (Women)</option>
                            <option value="Table Tennis (Men)">Table Tennis (Men)</option>
                            <option value="Table Tennis (Women)">Table Tennis (Women)</option>
                            <option value="Weightlifting">Weightlifting</option>



                        </select></p>
                    <br><br>
                    <p>Gender : <select name="gender">

                            <option value="male">Male</option>
                            <option value="female">Female</option>

                        </select></p>
                    <br><br>
                    <p>Sports co-ordinator : <select name="sco">

                            <option value="False">False</option>
                            <option value="Captain">Captain</option>
                            <option value="Vice-Captain">Vice-Captain</option>

                        </select></p>
                    <br><br>

                    <p>Description :</p><textarea name="description" value="description" onfocus="this.value = '';" onblur="if (this.value == '')
                                                  ">records, achievements, penalties, injuriess, punishments, etc..</textarea>
                    <!--Need to delete those default values-->
                    <!--                    <div class="alert alert-dismissible alert-warning">
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            <h4 class="alert-heading">Warning!</h4>
                                            <p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
                                        </div>
                                        <div class="alert alert-dismissible alert-primary">
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
                                        </div>-->
                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <!--                        <script>
                                                    function Func() {
                                                        alert("You registered successfully!");
                                                    }
                                                </script>-->

                    </div>

                </div>
                <div class="clear"></div>
            </form>

            <!--</div>-->
        </div>
        <div id="Sport" class="tabcontent">
            <form method="post" action="GBReq">
                <h2>Ground booking Request</h2>

                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Subject</label>
                    <div class="col-sm-7">
                        <input type="text" name="subject" placeholder="Enter Subject" class="form-control" autofocus>
                    </div>
                    <br>
                </div><br>
                <div class="form-group">
                    <label for="Request Person" class="col-sm-3 control-label">Requested Person</label>
                    <div class="col-sm-7">
                        <input type="text" name="rperson" placeholder="Enter name" class="form-control" autofocus>
                    </div>
                    <br>
                </div><br>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email </label>
                    <div class="col-sm-7">
                        <input type="email" name="email" placeholder="Enter Email" class="form-control">
                    </div>
                    <br>
                </div><br>

                <div class="form-group">
                    <label for="contact" class="col-sm-3 control-label">Contact No</label>
                    <div class="col-sm-7">
                        <input type="text"  name="contact" placeholder="Enter Contact number" class="form-control" />
                    </div>
                    <br>
                </div><br>
                <div class="form-group">
                    <label for="Request DetaiLs" class="col-sm-3 control-label">Request Details</label>
                    <div class="col-sm-7">
                        <input type="text" name="requestd" placeholder="Request Details" class="form-control"  />
                    </div>
                    <br>
                </div><br>

                <div class="form-group">
                    <label for="sport" class="col-sm-3 control-label">Sport</label>
                    <div class="col-sm-7">
                        <!--<input type="text" name="sport" class="form-control">-->
                        <p><select name="sport">
                                <option>Select a Sport</option>
                                <option value="Volleyball (Men)">Volleyball (Men)</option>
                                <option value="Volleyball (Women)">Volleyball (Women)</option>
                                <option value="Beach Volleyball (Men)">Beach Volleyball (Men)</option>
                                <option value="Beach Volleyball (Women)">Beach Volleyball (Women)</option>
                                <option value="Rowing (Men)">Rowing (Men)</option>
                                <option value="Rowing (Women)">Rowing (Women)</option>
                                <option value="Rugby (Men)">Rugby (Men)</option>
                                <option value="Rugby (Women)">Rugby (Women)</option>
                                <option value="Netball">Netball</option>
                                <option value="Chess (Men)">Chess (Men)</option>
                                <option value="Chess (Women)">Chess (Women)</option>
                                <option value="Tennis (Men)">Tennis (Men)</option>
                                <option value="Tennis (Women)">Tennis (Women)</option>
                                <option value="Elle (Men)">Elle (Men)</option>
                                <option value="Elle (Women)">Elle (Women)</option>
                                <option value="Carrom (Men)">Carrom (Men)</option>
                                <option value="Carrom (Women)">Carrom (Women)</option>
                                <option value="Scrabble (Men)">Scrabble (Men)</option>
                                <option value="Scrabble (Women)">Scrabble (Women)</option>
                                <option value="Cricket (Men)">Cricket (Men)</option>
                                <option value="Cricket (Women)">Cricket (Women)</option>
                                <option value="Baseball">Baseball</option>
                                <option value="Football">Football</option>
                                <option value="Taekwondo (Men)">Taekwondo (Men)</option>
                                <option value="Taekwondo (Women)">Taekwondo (Women)</option>
                                <option value="Badminton (Men)">Badminton (Men)</option>
                                <option value="Badminton (Women)">Badminton (Women)</option>
                                <option value="Karate (Men)">Karate (Men)</option>
                                <option value="Karate (Women)">Karate (Women)</option>
                                <option value="Road Race">Road Race</option>
                                <option value="Track & Field (Men)">Track & Field (Men)</option>
                                <option value="Track & Field (Women)">Track & Field (Women)</option>
                                <option value="Basketball (Men)">Basketball (Men)</option>
                                <option value="Basketball (Women)">Basketball (Women)</option>
                                <option value="Wrestling">Wrestling</option>
                                <option value="Hockey (Men)">Hockey (Men)</option>
                                <option value="Hockey (Women)">Hockey (Women)</option>
                                <option value="Swimming (Men)">Swimming (Men)</option>
                                <option value="Swimming (Women)">Swimming (Women)</option>
                                <option value="Table Tennis (Men)">Table Tennis (Men)</option>
                                <option value="Table Tennis (Women)">Table Tennis (Women)</option>
                                <option value="Weightlifting">Weightlifting</option>



                            </select></p>
                    </div>
                    <br>
                </div><br>
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">Reserved Date</label>
                    <div class="col-sm-7">
                        <input type="date" name="date" class="form-control">
                    </div>
                    <br>
                </div><br>
               
                <div class="form-group">
                    <label for="Description" class="col-sm-3 control-label">Description</label>
                    <div class="col-sm-7">
                        <input type="text" name="description" placeholder="Description" class="form-control">
                    </div>
                    <br>
                </div> <br>

                <button type="submit" style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Send Request</button>
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
