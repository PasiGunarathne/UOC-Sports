
<jsp:include page="WEB-INF/proheader.jsp"/>

<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Admin.jsp">Admin</a></li>
    <li class="breadcrumb-item active">Edit Staff</li>
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

<div style="margin-left:17%; width:1100px" class="container" width="900px">

    
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
                
                
                String sql = "select * from staff ";
               // String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Freshers';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/uocsport", "root", "");
                PreparedStatement ps = conn.prepareStatement(sql);
               // PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
              //  ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table><tr><th><p>Name</p></th>"
                        + "<th><p>|</p></th>"
                        + "<th><p>NIC</p></th>"
                        + "<th><p>Email</p></th>"
                        + "<th><p>DOB</p></th>"
                        + "<th><p>Joined Date</p></th>"
                        + "<th><p>Address</p></th>"
                        + "<th><p>Contact No</p></th>"
                        + "<th><p>Staff Type</p></th>"
                        + "<th><p>Edit</p></th>"
                        + "<th><p>Delete</p></th>"
                        + " </tr>";
                
                while (rs.next()) {
                    
                    str += "<tr><td><p>" + rs.getString(2) + "</p></td>"
                            + "<td><p>|</p></td>"
                            + "<td>" + rs.getString(1) + "</td>"
                            + "<td>" + rs.getString(3) + "</td>"
                            + "<td>" + rs.getString(4) + "</td>"
                            + "<td>" + rs.getString(5) + "</td>"
                            //+ "<td>" + rs.getString() + "</td>"
                            + "<td>" + rs.getString(7) + "</td>"
                            + "<td>" + rs.getString(8) + "</td>"
                            + "<td>" + rs.getString(9) + "</td>"
                            + "<td> <button type=\"button\" class=\"btn\" value=\"edit\">Edit</button> </td>"
                            + "<td> <button type=\"button\" class=\"btn\" value=\"delete\">Delete</button> </td>"
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
