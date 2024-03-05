package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Bookings_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>+View Bookings</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br><br><br><br><br><br><br>\n");
      out.write("        <h2 align=\"center\">Bookings</h2>\n");
      out.write("        <br> <br>\n");
      out.write("        <table align='center' border=\"1\" width=\"50%\" >\n");
      out.write("            <tr>\n");
      out.write("                <th>SL.No</th>\n");
      out.write("                <th>Product</th>\n");
      out.write("                <th>Date</th>\n");
      out.write("                <th>Qty</th>\n");
      out.write("                <th>Status</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
                int i = 0;
                String selQry = "select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id  inner join tbl_product p on p.product_id=c.product_id inner join tbl_buisness u on u.buisness_id=p.buisness_id where user_id='" + session.getAttribute("uid") + "' and booking_status>0";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                \n");
      out.write("                <td>");
      out.print(rs.getString("product_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("booking_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("cart_qty"));
      out.write("</td>\n");
      out.write("                <td>");

                    if (rs.getString("booking_status").equals("2") && rs.getString("cart_status").equals("1")) {
                        out.println("Payment Completed ,Package on Waiting List");
                    } else if (rs.getString("cart_status").equals("2") && rs.getString("booking_status").equals("2")) {
                        out.println("Product Packed");
                    } else if (rs.getString("cart_status").equals("3") && rs.getString("booking_status").equals("2")) {
                     out.println("Product Shiped");
                    } else if (rs.getString("cart_status").equals("4") && rs.getString("booking_status").equals("2")) {
                        
      out.write("\n");
      out.write("                        Product Delivered <a href=\"Review.jsp?id=");
      out.print(rs.getString("product_id"));
      out.write("\">Review</a>\n");
      out.write("                        ");

                        }

                    
      out.write("</td>\n");
      out.write("            </tr>         \n");
      out.write("            ");
                }


            
      out.write(" \n");
      out.write("        </table>\n");
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
