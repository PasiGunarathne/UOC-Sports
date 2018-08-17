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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pasindu
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Login</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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

        try {
            System.out.print("hello");
//            processRequest(request, response);

            String name = request.getParameter("user");
            String password = request.getParameter("password");
            String dbName = null;
            String dbPassword = null;

            String sql = "select * from registration where name=? and password=?";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uocsport", "Pasindu", "");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            PrintWriter out = response.getWriter();
            while (rs.next()) {
                dbName = rs.getString(2);
                dbPassword = rs.getString("password");
            }
            if (name.equals(dbName) && password.equals(dbPassword)) {
                if (name.equals("admin")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", name);
//                    RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
//                    rd.include(request, response);
                    response.sendRedirect("Admin.jsp");

                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", name);
//                    RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp");
//                    rd.include(request, response);
                    response.sendRedirect("Staff.jsp");

                }
//                if (name.equals("Pasindu")) {
//                    RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp");
//                    rd.include(request, response);
//                }
//                if (name.equals("PK")) {
//                    RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp");
//                    rd.include(request, response);
//                }
//                if (name.equals("Tom")) {
//                    RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp");
//                    rd.include(request, response);
//                }
//                if (name.equals("Kane")) {
//                    RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp");
//                    rd.include(request, response);
//                }

//                out.print("You have successfully Logged in!");
            } else {
//                response.sendRedirect("Login.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.include(request, response);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
