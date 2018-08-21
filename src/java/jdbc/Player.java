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
@WebServlet(name = "Player", urlPatterns = {"/Player"})
public class Player extends HttpServlet {

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
            System.out.print("hello2");
//            processRequest(request, response);

            String full_name = request.getParameter("name");
//            String reg_no = request.getParameter("rno");

            String reg_no = request.getParameter("rno");
            String n_id  = request.getParameter("nid");
            int contact_no = Integer.parseInt(request.getParameter("cno"));
            int age = Integer.parseInt(request.getParameter("age"));
            String email_address = request.getParameter("email");
            String position = request.getParameter("position");
            int year = Integer.parseInt(request.getParameter("year"));
            String faculty = request.getParameter("faculty");
            String sport = request.getParameter("sport");
            String gender = request.getParameter("gender");
            String description = request.getParameter("description");
            System.out.print("hello");

            String sql = "insert into player(full_name,reg_no,n_id,contact_no,age,email_address,position,year,faculty,sport,gender,description) values(?,?,?,?,?,?,?,?,?,?,?,?)";
//            String sql = "insert into player(full_name,reg_no) value(?,?)";
            out.println("You have successfully registered!");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, full_name);
            ps.setString(2, reg_no);
            ps.setString(3,n_id);
            ps.setInt(4, contact_no);
            ps.setInt(5, age);
            ps.setString(6, email_address);
            ps.setString(7, position);
            ps.setInt(8, year);
            ps.setString(9, faculty);
            ps.setString(10, sport);
            ps.setString(11, gender);
            ps.setString(12, description);

            ps.executeUpdate();
            PrintWriter out1 = response.getWriter();

            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp"); //redirect to the Staff.jsp
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
