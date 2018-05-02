<%-- 
    Document   : Staff
    Created on : Mar 27, 2018, 1:59:43 PM
    Author     : Pasindu
--%>

<jsp:include page="WEB-INF/proheader.jsp"/>
<%String username = request.getParameter("user"); %>


<!--<a href="Login.jsp">LogOut</a>-->

<div class="content-bottom3">
    <h1>Profile : <%out.println(username);%></h1>

    <!--    <div class="main">
            <div class="shop_top">-->
    <div class="container">

        <!--                <div class="row">
                            <div class="col-md-12 contact">-->
        <form method="post" action="Events">
            <div class="to">
                <br>
                <p>Event : <select name="Event">
                        <option>Select an Event</option>
                        <option value="IFac">Inter Faculty Tournament</option>
                        <option value="IFT">Inter Freashers' Tournament</option>
                        <option value="IUni">Inter University Tournament</option>
                        <option value="Other">Other</option>
                    </select></p>
                <br>
                <p>Sport : <select name="Sport">
                        <option>Select a Sport</option>
                        <option value="Cricket">Cricket</option>
                        <option value="Football">Football</option>
                        <option value="Volleyball">Volleyball</option>
                        <option value="Chess">Chess</option>
                        <option value="Swimming">Swimming</option>
                        <option value="Tennis">Tennis</option>
                        <option value="Netball">Netball</option>
                        <option value="Badminton">Badminton</option>
                        <option value="Karate">Karate</option>



                    </select></p>
                <br>
                <p><center>Date</center>
                <p>Year : <input type="text" name="year" required="required" class="text1" value=" year" onfocus="this.value = '';" onblur="if (this.value == '')">
                </p>
                <p>Month : <input type="text" name="month" required="required" class="text1" value=" month" onfocus="this.value = '';" onblur="if (this.value == '')">
                </p>
                <p>Day :<input type="text" name="day" required="required" class="text1" value=" day" onfocus="this.value = '';" onblur="if (this.value == '')">
                </p>
                <!--                <select name="Year">
                                        <option>Select a Year</option>
                                        <option value="2000"-->
                <% // for(int i =1975;i<2100;i++){
//                            out.println("<option value=""+i);
//                            out.println(">"+i+"</option>");}
%>





                <!--</select>-->
                <!--<input type="text" name="password" required="required" class="text" value="Enter your password" onfocus="this.value = '';" onblur="if (this.value == '')">-->
                <p>Team 1 : <select name="Team1">
                        <option>Select a Team</option>
                        <option value="UCSC">UCSC</option>
                        <option value="Faculty of Science">Faculty of Science</option>
                        <option value="Faculty of Management">Faculty of Management</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>



                    </select></p>
                <br>
                <p>Team 2 : <select name="Team1">
                        <option>Select a Team</option>
                        <option value="UCSC">UCSC</option>
                        <option value="Faculty of Science">Faculty of Science</option>
                        <option value="Faculty of Management">Faculty of Management</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>



                    </select></p>
                <br>
                <p>Winner : <select name="Team1">
                        <option>Select a Team</option>
                        <option value="UCSC">UCSC</option>
                        <option value="Faculty of Science">Faculty of Science</option>
                        <option value="Faculty of Management">Faculty of Management</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>



                    </select></p>
                <br>
                <p><center>Results</center></p>
                <p><select name="Team1">
                        <option>Select a Team</option>
                        <option value="UCSC">UCSC</option>
                        <option value="Faculty of Science">Faculty of Science</option>
                        <option value="Faculty of Management">Faculty of Management</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>



                    </select> :
                    <input type="text" name="score1" required="required" class="text" value="Enter team 1's score" onfocus="this.value = '';" onblur="if (this.value == '')">
                </p>
                <p><select name="Team2">
                        <option>Select a Team</option>
                        <option value="UCSC">UCSC</option>
                        <option value="Faculty of Science">Faculty of Science</option>
                        <option value="Faculty of Management">Faculty of Management</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>
                        <option value="Faculty of Art">Faculty of Art</option>



                    </select> :
                    <input type="text" name="score2" required="required" class="text" value="Enter team 2's score " onfocus="this.value = '';" onblur="if (this.value == '')">
                </p>


            </div>
            <br>
            <div class="text">
                <p>Description :</p><textarea value="Description" onfocus="this.value = '';" onblur="if (this.value == '')
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

    </div>
</div>
<!--</div>
</div>
</div>
</div>-->


<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
