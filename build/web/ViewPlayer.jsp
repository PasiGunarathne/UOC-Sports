<%-- 
    Document   : ViewPlayer
    Created on : Aug 21, 2018, 1:56:45 AM
    Author     : Pasindu
--%>
<%@page import="jdbc.Player"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Staff.jsp">Staff</a></li>
    <li class="breadcrumb-item"><a href="ViewPlayer.jsp">View data</a></li>
    <li class="breadcrumb-item active">Player Records</li>
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
<br><br>

<div class="const">
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Player name..">

</div>
<br>


<center>
    <div class="vp-container">
        <h1>Player details</h1><br>
        <%
            try {
                String sql = "select * from player where year='2018'";
//                String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Freshers';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
                PreparedStatement ps = conn.prepareStatement(sql);
//                PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
//                ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table id=\"myTable\" class =\"table\"><thead class=\"thead-dark\"><tr><th><p>Name</p></th>"
                        + "<th><p>Registration no</p></th>"
                        + "<th><p>NIC no</p></th>"
                        + "<th><p>Contact no</p></th>"
                        + "<th><p>Age</p></th>"
                        + "<th><p>Email</p></th>"
                        + "<th><p>Position</p></th>"
                        + "<th><p>year</p></th>"
                        + "<th><p>Faculty</p></th>"
                        + "<th><p>Sport</p></th>"
                        + "<th><p>Gender</p></th>"
                        + "<th><p>Description</p></th>"
                        + "<th><p></p></th>"
                        + "<th><p></p></th>"
                        
                        + " </tr></thead>";
                while (rs.next()) {
                    str += "<tr><td>" + rs.getString(2) + "</td>"
                            + "<td>" + rs.getString(3) + "</td>"
                            + "<td>" + rs.getString(4) + "</td>"
                            + "<td>" + rs.getString(5) + "</td>"
                            + "<td>" + rs.getString(6) + "</td>"
                            + "<td>" + rs.getString(7) + "</td>"
                            + "<td>" + rs.getString(8) + "</td>"
                            + "<td>" + rs.getString(9) + "</td>"
                            + "<td>" + rs.getString(10) + "</td>"
                            + "<td>" + rs.getString(11) + "</td>"
                            + "<td>" + rs.getString(12) + "</td>"
                            + "<td>" + rs.getString(13) + "</td>"
                            + "<td><button type=\"button\" class=\"btn\">Edit</button></td>"
                            + "<td><button type=\"button\" class=\"btn\">Delete</button></td>"
                            + "</tr>";
                }
                str += "</tr></table>";
                out.println(str);

//              
                conn.close();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
            }


        %>

        <br>


    </div>
</center>
<script>
    function myFunction() {
// Declare variables
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

// Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
<br>

<div class="const"><br>
    <h2>Edit Player</h2><br>
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
</div><br>

<jsp:include page="WEB-INF/footer.jsp"/>
