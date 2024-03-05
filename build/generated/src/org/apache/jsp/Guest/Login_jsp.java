package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        if (request.getParameter("btn_login") != null) {
            String email = request.getParameter("txt_email");
            String password = request.getParameter("txt_password");

            String selQryU1 = "select * from tbl_admin where admin_email='" + email + "' and admin_password='" + password + "'";
            ResultSet rsU1 = con.selectCommand(selQryU1);

            String selQryU = "select * from tbl_user where user_email='" + email + "' and user_password='" + password + "'";
            ResultSet rsU = con.selectCommand(selQryU);

            String selQryB = "select * from tbl_buisness  where buisness_email='" + email + "' and buisness_password='" + password + "'";
            ResultSet rs = con.selectCommand(selQryB);

            if (rsU1.next()) {
                session.setAttribute("aname", rsU1.getString("admin_name"));
                session.setAttribute("aid", rsU1.getString("admin_id"));
                response.sendRedirect("../Admin/HomePage.jsp");

            } else if (rsU.next()) {
                session.setAttribute("uname", rsU.getString("user_name"));
                session.setAttribute("uid", rsU.getString("user_id"));
                response.sendRedirect("../User/HomePage.jsp");
            } else if (rs.next()) {

                session.setAttribute("blogo", rs.getString("buisness_logo"));
                session.setAttribute("bname", rs.getString("buisness_name"));
                session.setAttribute("bid", rs.getString("buisness_id"));
                session.setAttribute("tid", rs.getString("type_id"));
                response.sendRedirect("../Business/HomePage.jsp");
            } else {
    
      out.write("\n");
      out.write("    <script>\n");
      out.write("        alert(\"Invalid Credentials\");\n");
      out.write("        window.location = \"Login.jsp\";\n");
      out.write("    </script>\n");
      out.write("    ");

            }
        }
    
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <div align=\"center\">\n");
      out.write("                <h1>Login</h1>\n");
      out.write("                <table border='1'>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>E-mail</td>\n");
      out.write("                        <td> <input type=\"email\" name='txt_email'required type=\"email\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td> <input type=\"password\" name='txt_password' required name=\"txt_pass\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <input type=\"submit\" name=\"btn_login\" value=\"login\">\n");
      out.write("                        </td>            \n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
