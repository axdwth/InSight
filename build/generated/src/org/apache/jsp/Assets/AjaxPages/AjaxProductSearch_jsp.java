package org.apache.jsp.Assets.AjaxPages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class AjaxProductSearch_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("    <tr>\n");
      out.write("    ");

        String selqry = "select* from tbl_product p inner join tbl_category c on p.category_id=c.category_id inner join tbl_subcategory s on c.subcategory_id=s.subcategory_id where true";
        if (request.getParameter("category") != "") {
            selqry += " and c.category_id='" + request.getParameter("category") + "'";
        }
        if (request.getParameter("subcategory") != "") {
            selqry += " and s.subcategory_id='" + request.getParameter("subcategory") + "'";
        }
        ResultSet rs = con.selectCommand(selqry);
        int i = 0;

        System.out.println(selqry);
        while (rs.next()) {
            i++;

    
      out.write("\n");
      out.write("        \n");
      out.write("<tr>\n");
      out.write("    <td>\n");
      out.write("        <br> <img src=\"../Assets/Files/");
      out.print(rs.getString("product_photo"));
      out.write("\"width=\"100\"height=\"100\"><br>\n");
      out.write("  >\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<br>\n");
      out.write("<tr>\n");
      out.write("    <td>\n");
      out.write("        <br> ");
      out.print(rs.getString("product_name"));
      out.write("<br>\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td>\n");
      out.write("        ");
      out.print(rs.getString("product_details"));
      out.write("\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td>\n");
      out.write("        ");
      out.print(rs.getString("product_price"));
      out.write("\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");

    if (i == 5) {

      out.write("\n");
      out.write("</tr><tr>\n");
      out.write("    ");

            i = 0;
        }
    
      out.write("\n");
      out.write("\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("</tr>");
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
