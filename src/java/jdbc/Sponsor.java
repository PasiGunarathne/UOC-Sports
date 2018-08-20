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
@WebServlet(name = "Sponsor", urlPatterns = {"/Sponsor"})
public class Sponsor extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Sponsor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Sponsor at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //System.out.print("hello");
//            processRequest(request, response);
try{
            String sport = request.getParameter("sport");
            String eventName = request.getParameter("eventName");
            String venue = request.getParameter("venue");
            String budget = request.getParameter("budget");
            String description = request.getParameter("description");
            String date = request.getParameter("date");
            String faculty = request.getParameter("faculty");
            
            String sql = "insert into sponsor(sport,eventName,venue,budget,description,date,faculty ) values(?,?,?,?,?,?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, sport);
            ps.setString(2,eventName);
            ps.setString(3, venue );
            ps.setString(4, budget);
            ps.setString(5, description);
            ps.setString(6, date);
            ps.setString(7, faculty);
            ps.executeUpdate();
            PrintWriter out = response.getWriter();

//                        out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("Forum.jsp"); //redirect to the Sponsor.jsp
            rd.include(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Sponsor.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Sponsor.class.getName()).log(Level.SEVERE, null, ex);
        }
        //processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
