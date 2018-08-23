

<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item active">Admin</li>
</ol>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--<div class="page-top">

    <center>
        <h1><a href="Admin.jsp">Admin Page</a></h1>
    </center>

</div>-->

<br>

<div> 
    <aside class="col-md-3">
        <ul class="list-group submenu">
            <li class="list-group-item"><a href="AddStaff.jsp">Add Staff</a></li>
            <li class="list-group-item"><a href="Edit_staff.jsp">Edit Staff</a></li>
            <li class="list-group-item"><a href="AddSport.jsp">Add Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="//">View Feedbacks</a></li>
        </ul>
    </aside>
</div>

<div style="margin-left:25%">
<iframe src="https://calendar.google.com/calendar/embed?src=testproject123uoc%40gmail.com&ctz=Asia%2FColombo" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
<div class="">
  
</div>
</div>
<br>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
