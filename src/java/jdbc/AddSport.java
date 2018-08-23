/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pasindu
 */
@WebServlet(name = "AddSport", urlPatterns = {"/AddSport"})
public class AddSport extends HttpServlet {

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Registration</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Registration at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        System.out.print("hello1");
        try {
           // System.out.print("hello2");
//            processRequest(request, response);

            //String nic = request.getParameter("nic");
            String sname = request.getParameter("sport_name");
            String captain  = request.getParameter("captain");
            String vcptain = request.getParameter("vice_captain");
            String coach = request.getParameter("coach");
            String incharge = request.getParameter("in_charge");
            String practisetime = request.getParameter("booked_time");  
            String achivements = request.getParameter("achievements");
            

            String sql = "insert into sport(sname,captain,vcptain,coach,incharge,practisetime,achivements) values(?,?,?,?,?,?,?)";


            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, sname);
            ps.setString(2, captain);
            ps.setString(3, vcptain);
            ps.setString(4, coach);
            ps.setString(5, incharge);
            ps.setString(6, practisetime);
            ps.setString(7, achivements);

            ps.executeUpdate();
            PrintWriter out = response.getWriter();

//            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("AddSport.jsp"); //redirect to the AddStaff.jsp
            rd.include(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void alert(String you_registered_successfully) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
