package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!--<h1>Login Form</h1>-->\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("<!--<div class=\"page-top\">\n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("         <h1>Login Page</h1>\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("</div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--<div align=\"center\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <form action=\"Login\" method=\"post\">\n");
      out.write("            <h2>Login Form</h2> \n");
      out.write("            User name : <input type=\"text\" name=\"user\"  required=\"required\">\n");
      out.write("            Password : <input type=\"password\" name=\"password\"  required=\"required\">\n");
      out.write("            <input type=\"submit\" value=\"LOGIN\"> \n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>-->\n");
      out.write("\n");
      out.write("<!--<br>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--<div class=\"content-bottom1\">\n");
      out.write("    \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row content_bottom-text\">\n");
      out.write("            <div class=\"col-md-7\">\n");
      out.write("                <div class=\"main\">\n");
      out.write("                    <div class=\"shop_top\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-12 contact\">\n");
      out.write("                                    <form method=\"post\" action=\"Login\">\n");
      out.write("                                        <div class=\"to\">\n");
      out.write("                                            \n");
      out.write("                                            <input type=\"text\" name=\"user\" required=\"required\" class=\"text\" value=\"Name\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                        this.value = 'Name';\n");
      out.write("                                                    }\">\n");
      out.write("                                            <input type=\"text\" name=\"password\" required=\"required\" class=\"text\" value=\"Enter your password\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                        this.value = 'password';\n");
      out.write("                                                    }\">\n");
      out.write("                                            <input type=\"text\" name=\"user\" required=\"required\" class=\"text\" value=\"Subject\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                        this.value = 'Subject';\n");
      out.write("                                                    }\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"text\">\n");
      out.write("                                            <textarea value=\"Message:\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                        this.value = 'Message';\n");
      out.write("                                                    }\">Message:</textarea>\n");
      out.write("                                            <div class=\"form-submit\">\n");
      out.write("                                                <input name=\"fpassword\" type=\"submit\" value=\"FORGOT PASSWORD\">\n");
      out.write("                                                Need to fix forgot password\n");
      out.write("                                                <input name=\"submit\" type=\"submit\" id=\"submit\" value=\"LOGIN\">\n");
      out.write("                                                <br>\n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                        <div class=\"clear\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>-->\n");
      out.write("\n");
      out.write("<div class=\"bodylogin\">\n");
      out.write("    <div class=\"login-box\">\n");
      out.write("    <img src=\"images/team1.jpg\" class=\"avatar\">\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <h1>Login here</h1>\n");
      out.write("    <br>\n");
      out.write("    <form method=\"post\" action=\"Login\">\n");
      out.write("        <p>Username</p>\n");
      out.write("        <input type=\"text\" name=\"user\" placeholder=\"Enter Username\" required=\"required\">\n");
      out.write("        <p>Password</p>\n");
      out.write("        <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" required=\"required\">\n");
      out.write("        <input type=\"submit\" name=\"submit\" value=\"Login\">\n");
      out.write("        <a href=\"#\">Forget Password</a>\n");
      out.write("        \n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
