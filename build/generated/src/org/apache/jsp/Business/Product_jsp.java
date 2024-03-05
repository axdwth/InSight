package org.apache.jsp.Business;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Product_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html>\n");
      out.write("        <head>\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>ADDPRODUCTS</title>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("            <div align='center'>\n");
      out.write("                <form enctype=\"multipart/form-data\" method=\"post\" action=\"../Assets/UploadAction/ProductUploadAction.jsp\">\n");
      out.write("                    <h1>ADD PRODUCTS</h1>\n");
      out.write("                    <table border='1'>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td> <input type=\"text\"name='productname'></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Details</td>\n");
      out.write("                            <td><textarea rows=\"4\" cols=\"20\" name=\"productdetails\" ></textarea></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Photo</td>\n");
      out.write("                            <td> <input type=\"file\"name='file_photo'></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Price</td>\n");
      out.write("                            <td> <input type=\"text\"name='productprice'></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Category</td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"sel_cat\" id=\"sel_cat\">\n");
      out.write("                                    <option value=\"\">--select--</option>\n");
      out.write("                                ");

                                    String selQry = "select * from tbl_category where type_id='"+session.getAttribute("tid")+"'";
                                    ResultSet rs = con.selectCommand(selQry);
                                    while (rs.next()) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(rs.getString("category_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("category_name"));
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write(" \n");
      out.write("                            </select>\n");
      out.write("                        </td>          \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Subcategory</td>\n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"sel_scat\" id=\"sel_scat\">\n");
      out.write("                                <option value=\"\">--select--</option>\n");
      out.write("                                ");

                                    String selQry1 = "select * from tbl_subcategory";
                                    ResultSet re = con.selectCommand(selQry1);
                                    while (re.next()) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(re.getString("subcategory_id"));
      out.write('"');
      out.write('>');
      out.print(re.getString("subcategory_name"));
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write(" \n");
      out.write("                            </select>\n");
      out.write("                        </td>          \n");
      out.write("                    </tr>  \n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <input type=\"submit\" name=\"btn_save\" value=\"save\">\n");
      out.write("                        </td>                       \n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                           \n");
      out.write("                </body>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"../Assets/JQ/jQuery.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            function getDistrict(sid)\n");
      out.write("            {\n");
      out.write("                $.ajax({\n");
      out.write("                    url: \"../Assets/AjaxPages/AjaxDistrict.jsp?did=\" + sid,\n");
      out.write("                    success: function(html) {\n");
      out.write("                        $(\"#sel_district\").html(html);\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            function getPlace(did)\n");
      out.write("            {\n");
      out.write("                $.ajax({\n");
      out.write("                    url: \"../Assets/AjaxPages/AjaxPlace.jsp?did=\" + did,\n");
      out.write("                    success: function(html) {\n");
      out.write("                        $(\"#sel_place\").html(html);\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
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
