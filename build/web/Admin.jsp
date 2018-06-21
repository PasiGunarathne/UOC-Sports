<%-- 
    Document   : Admin
    Created on : Mar 27, 2018, 1:52:24 PM
    Author     : Pasindu
--%>

<jsp:include page="WEB-INF/proheader.jsp"/>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--<div class="page-top">

    <center>
        <h1><a href="Admin.jsp">Admin Page</a></h1>
    </center>

</div>-->

<br>

<div class="w3-sidebar w3-bar-block" height="600" scrolling="yes" style="width:25%"> 
    <a href="Registration.jsp" class="w3-bar-item w3-button">Add Staff </a>
    <a href=".jsp" class="w3-bar-item w3-button">Update Staff </a>
    <a href=".jsp" class="w3-bar-item w3-button">Delete Staff </a>
    <!--<a href="Registration.jsp">Add Staff </a>-->
    <a href=".jsp" class="w3-bar-item w3-button">View Staff </a>
    <a href=".jsp" class="w3-bar-item w3-button">Check Event records</a>
    <a href=".jsp" class="w3-bar-item w3-button">Check booking requests</a>
    <a href=".jsp" class="w3-bar-item w3-button">View Feedbacks</a>
</div>

<div style="margin-left:25%">
<iframe src="https://calendar.google.com/calendar/embed?src=testproject123uoc%40gmail.com&ctz=Asia%2FColombo" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
<div class="w3-container w3-teal">
  
</div>
</div>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
