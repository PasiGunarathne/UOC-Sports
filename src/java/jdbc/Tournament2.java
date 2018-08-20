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
import java.sql.ResultSet;
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
@WebServlet(name = "Tournament2", urlPatterns = {"/Tournament2"})
public class Tournament2 extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Tournament2</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Tournament2 at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
   try {
            String sql = "select * from tournament_2 where name=? and password=?";

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            PrintWriter out = response.getWriter();
            while (rs.next()) {

            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Tournament.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        try {
            String sport = request.getParameter("sport2");
            int uoc = Integer.parseInt(request.getParameter("uoc"));
            int uom = Integer.parseInt(request.getParameter("uom"));
            int uor = Integer.parseInt(request.getParameter("uor"));
            int uob = Integer.parseInt(request.getParameter("uob"));
            int uoj = Integer.parseInt(request.getParameter("uoj"));
            int ujp = Integer.parseInt(request.getParameter("ujp"));
            int uou = Integer.parseInt(request.getParameter("uou"));
            int uok = Integer.parseInt(request.getParameter("uok"));
            int uop = Integer.parseInt(request.getParameter("uop"));
            int urj = Integer.parseInt(request.getParameter("urj"));
            int year = Integer.parseInt(request.getParameter("year2"));
            String type = request.getParameter("type2");

            String sql2 = "insert into tournament_2(sport,uoc,uom,uor,uob,uoj,ujp,uou,uok,uop,urj,year,type) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps2 = conn.prepareStatement(sql2);
            ps2.setString(1, sport);
            ps2.setInt(2, uoc);
            ps2.setInt(3, uom);
            ps2.setInt(4, uor);
            ps2.setInt(5, uob);
            ps2.setInt(6, uoj);
            ps2.setInt(7, ujp);
            ps2.setInt(8, uou);
            ps2.setInt(9, uok);
            ps2.setInt(10, uop);
            ps2.setInt(11, urj);
            ps2.setInt(12, year);
            ps2.setString(13, type);

            ps2.executeUpdate();
            PrintWriter out = response.getWriter();

            conn.close();
//            out.println("You have successfully registered!");
            RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp"); //redirect to the Staff   .jsp
            rd.include(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Tournament2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Tournament2.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
