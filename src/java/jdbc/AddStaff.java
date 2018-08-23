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
@WebServlet(name = "AddStaff", urlPatterns = {"/AddStaff"})
public class AddStaff extends HttpServlet {

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

            String nic = request.getParameter("nic");
            String name = request.getParameter("name");
            String email  = request.getParameter("email");
            String dob = request.getParameter("birthDate");
            String joined_date = request.getParameter("joined_date");
            String address = request.getParameter("address");
            int contact_no = Integer.parseInt(request.getParameter("contact_number"));
            String password = request.getParameter("password");  
            String staff_type = request.getParameter("staff_type");
            

            String sql = "insert into staff(nic,name,email,dob,joined_date,address,contact_no,password,staff_type) values(?,?,?,?,?,?,?,?,?)";


            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nic);
            ps.setString(2, name);
            ps.setString(3,email);
            ps.setString(4, dob);
            ps.setString(5, joined_date);
            ps.setString(6, address);
            ps.setInt(7, contact_no);
            ps.setString(8, password);
            ps.setString(9, staff_type);

            ps.executeUpdate();
            PrintWriter out = response.getWriter();

//            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("AddStaff.jsp"); //redirect to the AddStaff.jsp
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
