<%-- 
    Document   : Faculty
    Created on : Aug 20, 2018, 5:12:00 AM
    Author     : Pasindu
--%>


<%@page import="jdbc.Tournament"%>
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
<jsp:include page="WEB-INF/header.jsp"/>
<br>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
    <li class="breadcrumb-item"><a href="Freshers.jsp">Faculty meet</a></li>
    <li class="breadcrumb-item active">Data</li>
</ol>


<center>
    <br>

    <div class="chart">
        <canvas id="myChart"></canvas>

    </div>

    <div class="s-container">
        <h1>Summary of Faculty meet 2018</h1>
        <%
            try {
                String sql = "select * from tournament_1 where year='2018' and type='Faculty' ";
                String sql2 = "SELECT SUM(ucsc),SUM(fos),SUM(mgt),SUM(art),SUM(med),SUM(law),SUM(sripali),SUM(mmi),SUM(nur),SUM(tech) FROM tournament_1 WHERE year='2018' and type='Faculty';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
                PreparedStatement ps = conn.prepareStatement(sql);
                PreparedStatement ps2 = conn.prepareStatement(sql2);

                ResultSet rs = ps.executeQuery();
                ResultSet rs2 = ps2.executeQuery();
//                PrintWriter out = response.getWriter();

                String str = "<table><tr><th><p>Sport</p></th>"
                        + "<th><p>|</p></th>"
                        + "<th><p>UCSC</p></th>"
                        + "<th><p>Faculty of Science</p></th>"
                        + "<th><p>Faculty of Management</p></th>"
                        + "<th><p>Faculty of Arts</p></th>"
                        + "<th><p>Faculty of Medicine</p></th>"
                        + "<th><p>Faculty of Law</p></th>"
                        + "<th><p>Sripali Mandapaya</p></th>"
                        + "<th><p>MMI</p></th>"
                        + "<th><p>Faulty of Nursing</p></th>"
                        + "<th><p>Faculty of Technology</p></th>"
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
                            + "<td>" + rs.getString(9) + "</td>"
                            + "<td>" + rs.getString(10) + "</td>"
                            + "<td>" + rs.getString(11) + "</td></tr>";
                }

                str += "<tr><th><p>Total</p></th>";

                if (rs2.next()) {

                    String a1 = rs2.getString(1);
                    String a2 = rs2.getString(2);
                    String a3 = rs2.getString(3);
                    String a4 = rs2.getString(4);
                    String a5 = rs2.getString(5);
                    String a6 = rs2.getString(6);
                    String a7 = rs2.getString(7);
                    String a8 = rs2.getString(8);
                    String a9 = rs2.getString(9);
                    String a10 = rs2.getString(10);

                    str += "<td><p>|</p></td>"
                            + "<td>" + a1 + "</td>"
                            + "<td>" + a2 + "</td>"
                            + "<td>" + a3 + "</td>"
                            + "<td>" + a4 + "</td>"
                            + "<td>" + a5 + "</td>"
                            + "<td>" + a6 + "</td>"
                            + "<td>" + a7 + "</td>"
                            + "<td>" + a8 + "</td>"
                            + "<td>" + a9 + "</td>"
                            + "<td>" + a10 + "</td></tr>";

                    str += "<tr><th><p>Rank</p></th>";

                    ArrayList ranks = new ArrayList();

                    int aa1 = Integer.parseInt(a1);
                    int aa2 = Integer.parseInt(a2);
                    int aa3 = Integer.parseInt(a3);
                    int aa4 = Integer.parseInt(a4);
                    int aa5 = Integer.parseInt(a5);
                    int aa6 = Integer.parseInt(a6);
                    int aa7 = Integer.parseInt(a7);
                    int aa8 = Integer.parseInt(a8);
                    int aa9 = Integer.parseInt(a9);
                    int aa10 = Integer.parseInt(a10);

                    ranks.add(aa1);
                    ranks.add(aa2);
                    ranks.add(aa3);
                    ranks.add(aa4);
                    ranks.add(aa5);
                    ranks.add(aa6);
                    ranks.add(aa7);
                    ranks.add(aa8);
                    ranks.add(aa9);
                    ranks.add(aa10);
                    
                    %>


        <script>
            var ctx = document.getElementById("myChart");
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["UCSC", "Faculty of Science", "Faculty of Management", "Faculty of Arts", "Faculty of Medicine", "Faculty of Law", "Sripali Mandapaya", "MMI", "Faculty of Nursing", "Faculty of Technology"],
                    datasets: [{
                            label: 'Points',
                            data: <% out.print(ranks); %>,
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255,99,132,1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)'
                            ],
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    },
                    animation: {
//                    alert("hagsvj");
//window.print("srfhvbi");

                        easing: 'easeInBounce',
                        duration: 2000
                    }
                }
            });
        </script>

        <%

                    Collections.sort(ranks, Collections.reverseOrder());

                    int ra1 = ranks.indexOf(aa1) + 1;
                    int ra2 = ranks.indexOf(aa2) + 1;
                    int ra3 = ranks.indexOf(aa3) + 1;
                    int ra4 = ranks.indexOf(aa4) + 1;
                    int ra5 = ranks.indexOf(aa5) + 1;
                    int ra6 = ranks.indexOf(aa6) + 1;
                    int ra7 = ranks.indexOf(aa7) + 1;
                    int ra8 = ranks.indexOf(aa8) + 1;
                    int ra9 = ranks.indexOf(aa9) + 1;
                    int ra10 = ranks.indexOf(aa10) + 1;

                    str += "<td><p>|</p></td>"
                            + "<td>" + ra1 + "</td>"
                            + "<td>" + ra2 + "</td>"
                            + "<td>" + ra3 + "</td>"
                            + "<td>" + ra4 + "</td>"
                            + "<td>" + ra5 + "</td>"
                            + "<td>" + ra6 + "</td>"
                            + "<td>" + ra7 + "</td>"
                            + "<td>" + ra8 + "</td>"
                            + "<td>" + ra9 + "</td>"
                            + "<td>" + ra10 + "</td>";
        
                }
                str += "</tr></table>";
                out.println(str);

//              
                conn.close();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
            }


        %>

        <br>



        <h4>Best player (Men) : Lakmal </h4>
        <h4>Best player (Women) : Lakmali</h4>


    </div>
    <br>


</center>



<jsp:include page="WEB-INF/footer.jsp"/>