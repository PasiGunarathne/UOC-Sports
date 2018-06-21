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
@WebServlet(name = "Tournament", urlPatterns = {"/Tournament"})
public class Tournament extends HttpServlet {

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

            String sport  = request.getParameter("sport");
            int ucsc = Integer.parseInt(request.getParameter("ucsc"));
            int fos = Integer.parseInt(request.getParameter("fos"));
            int mgt = Integer.parseInt(request.getParameter("mgt"));
            int art = Integer.parseInt(request.getParameter("art"));
            int med = Integer.parseInt(request.getParameter("med"));
            int law = Integer.parseInt(request.getParameter("law"));
            int sripali = Integer.parseInt(request.getParameter("spl"));
            int mmi = Integer.parseInt(request.getParameter("mmi"));
            int nur = Integer.parseInt(request.getParameter("nur"));
            int tech = Integer.parseInt(request.getParameter("tech"));
            int year = Integer.parseInt(request.getParameter("year"));
            String type  = request.getParameter("type");
            
            System.out.print("hello");

            String sql = "insert into tournament_1(sport,ucsc,fos,mgt,art,med,law,sripali,mmi,nur,tech,year,type) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
//            String sql = "insert into (sport,ucsc) value(?,?)";

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, sport);
            ps.setInt(2, ucsc);
            ps.setInt(3, fos);
            ps.setInt(4, mgt);
            ps.setInt(5, art);
            ps.setInt(6, med);
            ps.setInt(7, law);
            ps.setInt(8, sripali);
            ps.setInt(9, mmi);
            ps.setInt(10, nur);
            ps.setInt(11, tech);
            ps.setInt(12, year);
            ps.setString(13, type);

            ps.executeUpdate();
            PrintWriter out = response.getWriter();

//            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp"); //redirect to the Registration.jsp
            rd.include(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
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
