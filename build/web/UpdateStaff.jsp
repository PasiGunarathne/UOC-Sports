<%-- 
    Document   : UpdateStaff
    Created on : Aug 23, 2018, 2:14:59 AM
    Author     : Pasindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <li class="list-group-item"><a href="EditSport.jsp">Edit Sport</a></li>
            <li class="list-group-item"><a href="CheckRequests.jsp">Check booking requests</a></li>
            <li class="list-group-item"><a href="SponsorRequest.jsp">Sponsorship Requests</a></li>
            <li class="list-group-item"><a href="VeiwForum.jsp">Forums</a></li>
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
//        try {
//
//            String sql = "select * from staff ";
//            // String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Freshers';";
//
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/uocsport", "Pasindu", "");
//            PreparedStatement ps = conn.prepareStatement(sql);
//            // PreparedStatement ps2 = conn.prepareStatement(sql2);
//
//            ResultSet rs = ps.executeQuery();
//            //  ResultSet rs2 = ps2.executeQuery();
////                PrintWriter out = response.getWriter();
//
//            String str = "<table><tr><th><p>Name</p></th>"
//                    + "<th><p>NIC</p></th>"
//                    + "<th><p>Email</p></th>"
//                    + "<th><p>DOB</p></th>"
//                    + "<th><p>Joined Date</p></th>"
//                    + "<th><p>Address</p></th>"
//                    + "<th><p>Contact No</p></th>"
//                    + "<th><p>Staff Type</p></th>"
//                    + "<th><p>Edit</p></th>"
//                    + "<th><p>Delete</p></th>"
//                    + " </tr>";
//
//            while (rs.next()) {
//
//                str += "<tr><td><p>" + rs.getString(2) + "</p></td>"
//                        + "<td>" + rs.getString(1) + "</td>"
//                        + "<td>" + rs.getString(3) + "</td>"
//                        + "<td>" + rs.getString(4) + "</td>"
//                        + "<td>" + rs.getString(5) + "</td>"
//                        //+ "<td>" + rs.getString() + "</td>"
//                        + "<td>" + rs.getString(7) + "</td>"
//                        + "<td>" + rs.getString(8) + "</td>"
//                        + "<td>" + rs.getString(9) + "</td>"
//                        + "<td> <a href=\"EditStaff?id=rs.getString(2)\"><button type=\"button\" class=\"btn btn-primary\" value=\"edit\" id=\"id\" >Edit</button></a> </td>"
//                        + "<td> <button type=\"button\" class=\"btn btn-danger\" value=\"delete\">Delete</button> </td>"
//                        + "</tr>";
//
//            }
//
//            str += "</tr></table>";
//            out.println(str);
//
////              
//            conn.close();
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (SQLException ex) {
//            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
//        }
//

    %>

    <div class="const">
    <c:forEach items="${getStaffById}" var="p">

        <form method="post" action="EditStaff">
            <h2>Edit Staff</h2>
            <br>
            <input type="hidden" name="id" value="${p.id}">

            <div class="form-group">
                <label for="Name" class="col-sm-3 control-label">Name</label>
                <div class="col-sm-7">
                    <input type="text" name="name" value="${p.name}" placeholder="Name" class="form-control" autofocus>
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label for="NIC" class="col-sm-3 control-label">NIC</label>
                <div class="col-sm-7">
                    <input type="text" name="nic" value="${p.nic}" placeholder="NIC" class="form-control" autofocus>
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email </label>
                <div class="col-sm-7">
                    <input type="email" name="email" value="${p.email}" placeholder="Email" class="form-control" name= "email">
                </div>
                <br>
            </div><br>


            <div class="form-group">
                <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                <div class="col-sm-7">
                    <input type="date" name="birthDate" value="${p.dob}" class="form-control">
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label for="Joined Date" class="col-sm-3 control-label">Joined Date</label>
                <div class="col-sm-7">
                    <input type="date" name="joined_date" value="${p.joined_date}" class="form-control">
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label for="ContactNumber" class="col-sm-3 control-label">Contact number </label>
                <div class="col-sm-7">
                    <input type="ContactNumber" name="contact_number" value="${p.contact_no}" placeholder="Phone number" class="form-control">
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label for="Address" class="col-sm-3 control-label">Address</label>
                <div class="col-sm-7">
                    <input type="text" name="address" value="${p.address}" placeholder="Address" class="form-control">
                </div>
                <br>
            </div><br>
            <div class="form-group">
                <label class="control-label col-sm-3">Staff Type</label>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="staff_type" value="d_entry">Data entry
                            </label>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" name="staff_type" value="g_booking">Ground Booking
                            </label>
                        </div>
                    </div>
                    <br>
                </div>
            </div>     <br>           

            <button type="submit" style="margin-left:280px ;width:580px" value="SUBMIT" onclick="Func()" class="btn btn-primary btn-block">Register</button>
            <br>
            <script>
                function Func() {
                    alert("You registered successfully!");
                }
            </script>                
        </form>
    </c:forEach>

</div>

</div>
<br><br>


<br> 
<jsp:include page="WEB-INF/footer.jsp"/>
</body>
</html>
