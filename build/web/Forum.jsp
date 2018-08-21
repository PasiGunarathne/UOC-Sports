<%-- 
    Document   : Forum
    Created on : Aug 18, 2018, 3:33:01 PM
    Author     : Pasindu
--%>

<jsp:include page="WEB-INF/proheader.jsp"/>

<br>
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Staff.jsp">Staff</a></li>
    <li class="breadcrumb-item"><a href="Forum.jsp">Forum</a></li>
    <li class="breadcrumb-item active">Data</li>
</ol>
<br>
<div class="const">
  
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
</div>
<div class="content-bottom3">
<!--<h1>Profile : <% //out.println(username);%></h1>-->

    <!--    <div class="main">
            <div class="shop_top">-->

    <div class="container">
        <!--<p>Click on the buttons inside the tabbed menu:</p>-->

        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'new-problem')" id="defaultOpen">Add new problem</button>
            <button class="tablinks" onclick="openCity(event, 'all-problems')">All problems</button>
            <button class="tablinks" onclick="openCity(event, 'new-request')">Add sponsorship request</button>
            <button class="tablinks" onclick="openCity(event, 'all-request')">Sponsorship requests</button>
        </div>



        <!--form for add problems-->
        <div id="new-problem" class="tabcontent">
            <form method="post" action="Forum">
                <div class="to">

                    <table>

                        <tr>
                            <td> <p>Sport : <select name="sport">
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



                                    </select></p></td>
                        </tr>
                        <td></td>

                    </table>
                    <label>Request in brief</label>
                    <input type="text" name="reqInBrief">
                    <br>

                    <label>Problem Description</label>
                    <br>
                    <textarea rows="4" cols="50" name="description">

                    </textarea>

                </div>
                <br>
                <br><br>
                <div class="text">
                    <p>Date :
                        <input type="date" name="date"></p>
                    <br><br>
                    <p>Faculty: <select name="faculty">
                            <option>Select a faculty</option>
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


                    <!--Need to delete those default values-->
                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("Your problem added successfully!");
                            }
                        </script>
                    </div>

                </div>
                <div class="clear"></div>
            </form>
        </div>


        <div id="all-problems" class="tabcontent">
            <h3>Tokyo</h3>
            <p>Tokyo is the capital of Japan.</p>
        </div>
        <div id="new-request" class="tabcontent">
                   <!--form for add problems-->
            <form method="post" action="Sponsor">
                <div class="to">

                    <table>
                        <tr>
                            <td> <p>Sport : <select name="sport">
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



                                    </select></p></td>
                        </tr>
                        <td></td>

                    </table>
                    <label>Event Name:</label>
                    <input type="text" name="eventName">
                    <br>
                    <label>Venue:</label>
                    <input type="text" name="venue">
                    <br>
                    <label>Budget:</label>
                    <input type="text" name="budget">
                    <br>

                    <label>Description:</label>
                    <br>
                    <textarea rows="4" cols="71" name="description">

                    </textarea>

                </div>
                <br>
                <br><br>
                <div class="text">
                    <p>Date :
                        <input type="date" name="date"></p>
                    <br><br>
                    <p>Faculty: <select name="faculty">
                            <option>Select a faculty</option>
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


                    <!--Need to delete those default values-->
                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("Your problem added successfully!");
                            }
                        </script>
                    </div>

                </div>
                <div class="clear"></div>
            </form>
        </div>

        </div>

        <div id="all-request" class="tabcontent">
            <h3>Tokyo</h3>
            <p>Tokyo is the capital of Japan.</p>
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
<jsp:include page="WEB-INF/footer.jsp"/>

</body>
</html>
