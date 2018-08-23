<%-- 
    Document   : Volleyball
    Created on : Jun 17, 2018, 4:54:50 AM
    Author     : Pasindu
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="jdbc.Player"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="s_header.jsp"/>
<br>
  <ol class="breadcrumb">
  <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="../Sports.jsp">Sports</a></li>
  <li class="breadcrumb-item active">Volleyball</li>
</ol>
<center>
    <br>
    <div class="s-container">
    <center><h1>UOC Volleyball</h1></center>
    <p>Teacher in charge : Mr. Ajantha Dahanayake</p>
    <br>
    <h2>Volleyball (Men)</h2>
    <div>
        <h3>Achievements</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.</p>
        <br>
        <h3>Team members</h3>
        <p>Captain : Lakmal Weerarathne</p>
        <p>Vice Captain : Lakmal Weerarathne</p>
        
       <center>
     <div class="vp-container">
         <h1>Player details</h1><br>
        <%
            try {
                String sql = "select * from player where year='2018' and sport='Volleyball' and gender='male'";
//                String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Freshers';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
                PreparedStatement ps = conn.prepareStatement(sql);
//                PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
//                ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table class =\"table\"><thead class=\"thead-dark\"><tr><th><p>Name</p></th>"
                        + "<th><p>Registration no</p></th>"
                        + "<th><p>NIC no</p></th>"
                        + "<th><p>Contact no</p></th>"
                        + "<th><p>Age</p></th>"
                        + "<th><p>Email</p></th>"
                        + "<th><p>Position</p></th>"
                        + "<th><p>year</p></th>"
                        + "<th><p>Faculty</p></th>"
                        + "<th><p>Description</p></th>"
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
                            + "<td>" + rs.getString(13) + "</td>"
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

    </div>
    
    <br>
    <br>
    <br>
    <h2>Volleyball (Women)</h2>
    <div>
        <h3>Achievements</h3>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.</p>
        <br>
        <h3>Team members</h3>
        <p>Captain : Lakmali Weerarathne</p>
        <p>Vice Captain : Lakmali Weerarathne</p>
       
        
               <center>
     <div class="vp-container">
         <h1>Player details</h1><br>
        <%
            try {
                String sql = "select * from player where year='2018' and sport='Volleyball (Women)' and gender='female'";
//                String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Freshers';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
                PreparedStatement ps = conn.prepareStatement(sql);
//                PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
//                ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table class =\"table\"><thead class=\"thead-dark\"><tr><th><p>Name</p></th>"
                        + "<th><p>Registration no</p></th>"
                        + "<th><p>NIC no</p></th>"
                        + "<th><p>Contact no</p></th>"
                        + "<th><p>Age</p></th>"
                        + "<th><p>Email</p></th>"
                        + "<th><p>Position</p></th>"
                        + "<th><p>year</p></th>"
                        + "<th><p>Faculty</p></th>"
                        + "<th><p>Description</p></th>"
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
                            + "<td>" + rs.getString(13) + "</td>"
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
        

    </div>
    
    <br>

    </div>
    <br>
</center>





<jsp:include page="../WEB-INF/footer.jsp"/>
