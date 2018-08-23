/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
@WebServlet(name = "GBReq", urlPatterns = {"/GBReq"})
public class GBReq extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GBReq</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GBReq at " + request.getContextPath() + "</h1>");
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        try {
            System.out.print("hello2");
//            processRequest(request, response);

            String subject = request.getParameter("subject");
//            String reg_no = request.getParameter("rno");

            String rperson = request.getParameter("rperson");
            String email = request.getParameter("email");
            int contact = Integer.parseInt(request.getParameter("contact"));
            String requestd = request.getParameter("requestd");

            String sport = request.getParameter("sport");
            String date = request.getParameter("date");
            

            String description = request.getParameter("description");
            System.out.print("hello");

            String sql = "insert into gbreq(subject,rperson,email,contact,requestd,sport,date,description) values(?,?,?,?,?,?,?,?)";
//            String sql = "insert into player(full_name,reg_no) value(?,?)";
            out.println("You have successfully registered!");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, subject);
            ps.setString(2, rperson);
            ps.setString(3, email);
            ps.setInt(4, contact);
            ps.setString(5, requestd);
            ps.setString(6, sport);
            ps.setString(7, date);
            ps.setString(8, description);
            

            ps.executeUpdate();
            PrintWriter out1 = response.getWriter();

            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("StaffGB.jsp"); //redirect to the Staff.jsp
            rd.include(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Player.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
