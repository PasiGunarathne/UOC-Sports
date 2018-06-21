<%-- 
    Document   : Staff
    Created on : Mar 27, 2018, 1:59:43 PM
    Author     : Pasindu
--%>

<jsp:include page="WEB-INF/proheader.jsp"/>
<%String username = request.getParameter("user"); %>
<%String x = dbName%>


<!--<a href="Login.jsp">LogOut</a>-->
<div class="page-top">

    <center>
        <!--<h1><% //out.println(username);%>'s profile</h1>-->
    </center>

</div>

<div class="content-bottom3">
    <!--<h1>Profile : <% //out.println(username);%></h1>-->

    <!--    <div class="main">
            <div class="shop_top">-->

    <div class="container">
        <!--<p>Click on the buttons inside the tabbed menu:</p>-->

        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'player')" id="defaultOpen">Player</button>
            <button class="tablinks" onclick="openCity(event, 'results1')">Inter Faculty/Freshers' Results </button>
            <button class="tablinks" onclick="openCity(event, 'results2')">Inter University/Others Results</button>
            <button class="tablinks" onclick="openCity(event, 'Sport')">Sport</button>
            <button class="tablinks" onclick="openCity(event, 'Sports-cordinator')">Sports-cordinator</button>
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

                    <p>Description :</p><textarea value="description" onfocus="this.value = '';" onblur="if (this.value == '')
                                                  ">records, achievements, penalties, injuriess, punishments, etc..</textarea>
                    <!--Need to delete those default values-->
                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>
                    </div>

                </div>
                <div class="clear"></div>
            </form>

            <!--</div>-->
        </div>

        <!--inter freshers/faculty results-->
        <div id="results1" class="tabcontent">
            <form method="post" action="Tournament">
                <div class="to">
                    <br>
                    <!--Faculty of medicine	Faculty of law	Sripali mandapaya	MMI	Year	type-->

                    <!--                    <p>Sport : <input type="text" name="name" required="required" class="text1" value="full name" onfocus="this.value = '';" onblur="if (this.value == '')">
                                        </p>
                    -->
                    <br>
                    <table>
                        <tr>
                            <td><p>University of Colombo School of Computing :</p></td>
                            <td><p><select name="ucsc">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Science : </p></td>
                            <td><p><select name="fos">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Management : </p></td>
                            <td><p><select name="mgt">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Art : </p></td>
                            <td><p><select name="art">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>
                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Medicine : </p></td>
                            <td><p><select name="med">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Law : </p></td>
                            <td><p><select name="law">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>
                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Sripali Mandapaya : </p></td>
                            <td><p><select name="spl">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>MMI : </p></td>
                            <td><p><select name="mmi">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>
                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Nursing : </p></td>
                            <td><p><select name="nur">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Technology : </p></td>
                            <td><p><select name="tech">
                                        <option>Select a point</option>
                                        <option value="0">not participated</option>
                                        <option value="1">1</option>
                                        <option value="3">3</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>

                                    </select></p></td>
                        </tr>
                    </table>

                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>
                    </div>

                </div>
                <br>
                <br><br>
                <div class="text">
                    <p>Year : <select name="year">
                            <option>Select year</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>



                        </select></p>
                    <br><br>
                    <p>Type : <select name="type">
                            <option>Select a type</option>
                            <option value="Freshers">Freshers'Meet</option>
                            <option value="Faculty">Inter Faculty Tournament</option>

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

                    <!--Need to delete those default values-->


                </div>
                <div class="clear"></div>
            </form>
        </div>

        <!--inter uni/others results-->
        <div id="results2" class="tabcontent">
            <form method="post" action="Tournament">
                <div class="to">
                    <br>
                    <!--Faculty of medicine	Faculty of law	Sripali mandapaya	MMI	Year	type-->

                    <!--                    <p>Sport : <input type="text" name="name" required="required" class="text1" value="full name" onfocus="this.value = '';" onblur="if (this.value == '')">
                                        </p>
                    -->
                    <br>
                    <table>
                        <tr>
                            <td><p>University of Colombo  :</p></td>
                            <td><p><select name="uoc">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of Moratuwa : </p></td>
                            <td><p><select name="uom">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of Ruhuna : </p></td>
                            <td><p><select name="uor">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of Sabaragamuwa : </p></td>
                            <td><p><select name="uob">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of Jaffna </p></td>
                            <td><p><select name="uoj">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of Sri Jayawadenapura : </p></td>
                            <td><p><select name="usj">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>University of South Eastern : </p></td>
                            <td><p><select name="use">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>MMI : </p></td>
                            <td><p><select name="mmi">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Nursing : </p></td>
                            <td><p><select name="nur">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                        <td></td>
                        <tr>
                            <td><p>Faculty of Technology : </p></td>
                            <td><p><select name="tech">
                                        <option>Select a point</option>
                                        <option value="7">7</option>
                                        <option value="5">5</option>
                                        <option value="3">3</option>
                                        <option value="1">1</option>
                                        <option value="-">not participated</option>

                                    </select></p></td>
                        </tr>
                    </table>

                    <div class="form-submit">
                        <input name="submit" type="submit" id="submit" value="SUBMIT" onclick="Func()"><br>
                        <script>
                            function Func() {
                                alert("You registered successfully!");
                            }
                        </script>
                    </div>

                </div>
                <br>
                <br><br>
                <div class="text">
                    <p>Year : <select name="year">
                            <option>Select year</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>



                        </select></p>
                    <br><br>
                    <p>Type : <select name="type">
                            <option>Select a type</option>
                            <option value="uni">Inter University Championship</option>
                            <option value="other">Others</option>

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

                    <!--Need to delete those default values-->


                </div>
                <div class="clear"></div>
            </form>
        </div>

        <div id="Sport" class="tabcontent">
            <h3>Tokyo</h3>
            <p>Tokyo is the capital of Japan.</p>
        </div>
        <div id="Sports-cordinator" class="tabcontent">
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
<!--</div>
</div>
</div>
</div>-->


<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
