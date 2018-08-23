
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Admin.jsp">Admin</a></li>
    <li class="breadcrumb-item active">Sponsorships Requests</li>
</ol>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--<div class="page-top">

    <center>
        <h1><a href="Admin.jsp">Admin Page</a></h1>
    </center>

</div>-->

<br>

<div> 
    <aside class="col-md-2" margin-top="10%">
        <ul class="list-group submenu">
            <li class="list-group-item"><a href="AddStaff.jsp">Add Staff</a></li>
            <li class="list-group-item"><a href="Edit_staff.jsp">Edit Staff</a></li>
            <li class="list-group-item"><a href="AddSport.jsp">Add Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="SponsorRequest.jsp">Sponsorships Requests</a></li>
        </ul>
    </aside>
</div>

<div style="margin-left:17%; width:100%" class="container" width="900px">

    
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<br>


        <%
            try {
                
                
                String sql = "select * from sponsor ";
               
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/uocsport", "root", "");
                PreparedStatement ps = conn.prepareStatement(sql);
               // PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
              //  ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table><tr><th><p>Sponsor Id</p></th>"
                        + "<th><p>|</p></th>"
                        + "<th><p>Sport</p></th>"
                        + "<th><p>Event Name</p></th>"
                        + "<th><p>Venue</p></th>"
                        + "<th><p>Budget</p></th>"
                        + "<th><p>Description</p></th>"
                        + "<th><p>Date</p></th>"
                        + "<th><p>Faculty</p></th>"
                        + " </tr>";
                
                while (rs.next()) {
                    
                    str += "<tr><td><p>" + rs.getString(1) + "</p></td>"
                            + "<td><p>|</p></td>"
                            + "<td>" + rs.getString(2) + "</td>"
                            + "<td>" + rs.getString(3) + "</td>"
                            + "<td>" + rs.getString(4) + "</td>"
                            + "<td>" + rs.getString(5) + "</td>"
                            + "<td>" + rs.getString(6) + "</td>"
                            + "<td>" + rs.getString(7) + "</td>"
                            + "<td>" + rs.getString(8) + "</td>"
                            + "</tr>";
                    
                }
                
                 str += "</tr></table>";
                out.println(str);
                
//              
                
                conn.close();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
            }


        %>
    
</div>
        <br>
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
