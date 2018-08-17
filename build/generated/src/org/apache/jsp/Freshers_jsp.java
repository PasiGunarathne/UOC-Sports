package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Freshers_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    <br>\n");
      out.write("    <div class=\"s-container\">\n");
      out.write("    <h1>Summary of Freshers' meet 2018</h1>\n");
      out.write("    <table>\n");
      out.write("            <tr>\n");
      out.write("                <th><p>Sport</p></th>\n");
      out.write("                <th><p>|</p></th>\n");
      out.write("                <th><p>UCSC</p></th>\n");
      out.write("                <th><p>Faculty of Science</p></th>\n");
      out.write("                <th><p>Faculty of Management</p></th>\n");
      out.write("                <th><p>Faculty of Arts</p></th>\n");
      out.write("                <th><p>Faculty of Medicine</p></th>\n");
      out.write("                <th><p>Faculty of Law</p></th>\n");
      out.write("                <th><p>Sripali Mandapaya</p></th>\n");
      out.write("                <th><p>MMI</p></th>\n");
      out.write("                <th><p>Faulty of Nursing</p></th>\n");
      out.write("                <th><p>Faculty of Technology</p></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><p>Volleyball (Men)</p></td>\n");
      out.write("                <td><p>|</p></td>\n");
      out.write("                <td><p>7</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>3</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>5</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><p>Total</p></td>\n");
      out.write("                <td><p>|</p></td>\n");
      out.write("                <td><p>7</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>3</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>5</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("                <td><p>1</p></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><p>Rank</td>\n");
      out.write("                <td><p>|</p></td>\n");
      out.write("                <td><p>1<p></td>\n");
      out.write("                <td><p>2</p></td>\n");
      out.write("                <td><p>4<p></td>\n");
      out.write("                <td><p>3</p></td>\n");
      out.write("                <td><p>8</p></td>\n");
      out.write("                <td><p>6</p></td>\n");
      out.write("                <td><p>7</p></td>\n");
      out.write("                <td><p>9</p></td>\n");
      out.write("                <td><p>10</p></td>\n");
      out.write("                <td><p>5</p></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <h4>Best player (Men) : Lakmal </h4>\n");
      out.write("    <h4>Best player (Women) : Lakmali</h4>\n");
      out.write("    \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("    <br>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/footer.jsp", out, false);
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
