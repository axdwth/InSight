package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Category_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("   ");

              
     if(request.getParameter("btn_save")!=null )
    {
        String cat= request.getParameter("category_name");
         String type= request.getParameter("sel_type");
        
         String insqry= "insert into tbl_category(category_name,type_id)values('"+cat+"','"+type+"')";
   con.executeCommand(insqry);
    }
      if(request.getParameter("cid")!=null )
    {
        String id= request.getParameter("cid");
         String delqry= "delete from tbl_category where category_id="+id+"";
   con.executeCommand(delqry);
    }
    
    
      out.write("\n");
      out.write("    <body >\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <form method=\"POST\">\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Enter Category</td>\n");
      out.write("                        <td><input type=\"text\" name=\"category_name\"></td>\n");
      out.write("                    </tr><tr>\n");
      out.write("                        <td>Type</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"sel_type\" id=\"sel_type\">\n");
      out.write("                            <option value=\"\">--select--</option>\n");
      out.write("                            ");

                                String selQry = "select * from tbl_type";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("type_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("type_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write(" \n");
      out.write("                        </select>\n");
      out.write("                    </td>                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <input type=\"submit\" name=\"btn_save\" value=\"save\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <td>slno</td>\n");
      out.write("                <td>categoryname</td>\n");
      out.write("                <td>Type</td>\n");
      out.write("                <td>action</td>\n");
      out.write("            \n");
      out.write("            ");

              int i = 0;
                String selqry1 = "select * from tbl_category p inner join tbl_type d on d.type_id=p.type_id";
                ResultSet re = con.selectCommand(selqry1);
                while (re.next()) {
                    i++;         
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(re.getString("category_name"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(re.getString("type_name"));
      out.write("</td>\n");
      out.write("                <td><a href =\"Category.jsp?cid=");
      out.print(re.getString("category_id"));
      out.write("\">delete</a></td>\n");
      out.write("            </tr>\n");
      out.write("            ");

     }
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
