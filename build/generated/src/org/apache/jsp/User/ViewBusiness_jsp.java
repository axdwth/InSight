package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewBusiness_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>View Business</title>\n");
      out.write("        <style>\n");
      out.write("            table {\n");
      out.write("                width: 50%;\n");
      out.write("                margin: 20px auto;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table, th, td {\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            th, td {\n");
      out.write("                padding: 10px;\n");
      out.write("                text-align: rightt;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-container {\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: space-between;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            select {\n");
      out.write("                padding: 9px;\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                flex-grow: 5;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .search-button {\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: #007bff;\n");
      out.write("                color: #fff;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .card {\n");
      out.write("                width: 200px;\n");
      out.write("                margin: 10px;\n");
      out.write("                float: left;\n");
      out.write("                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\n");
      out.write("                border-radius: 8px;\n");
      out.write("                overflow: hidden;\n");
      out.write("                transition: transform 0.3s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card:hover {\n");
      out.write("                transform: scale(1.10);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card img {\n");
      out.write("                width: 200px;\n");
      out.write("                height: 200px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card-body {\n");
      out.write("                padding: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card-title {\n");
      out.write("                font-size: 16px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card-text {\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-primary {\n");
      out.write("                display: block;\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 8px;\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: #007bff;\n");
      out.write("                color: #fff;\n");
      out.write("                text-decoration: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .clearfix {\n");
      out.write("                clear: both;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"search()\">\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h1>BUSINESS</h1>\n");
      out.write("            <br> \n");
      out.write("            <table border=\"1\">\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" class=\"dropdown-container\">\n");
      out.write("                        <select  name=\"sel_state\" id=\"sel_state\" onchange=\"getDistrict(this.value), search()\">\n");
      out.write("                            <option value=\"\">Select State</option>\n");
      out.write("                            ");

                                String selQry = "select * from tbl_state";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("state_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("state_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <select name=\"sel_district\" id=\"sel_district\" onchange=\"getPlace(this.value), search()\">\n");
      out.write("                            <option value=\"\">Select District</option>\n");
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("                        <select name=\"sel_place\" id=\"sel_place\"onchange=\"search()\">\n");
      out.write("                            <option value=\"\">Select Place</option>\n");
      out.write("                        </select>\n");
      out.write("                        <select  name=\"sel_type\" id=\"sel_type\"onchange=\"search()\">\n");
      out.write("                            <option value=\"\">Select Type</option>\n");
      out.write("                            ");

                                String selQryj = "select * from tbl_type";
                                ResultSet rsj = con.selectCommand(selQryj);
                                while (rsj.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rsj.getString("type_id"));
      out.write('"');
      out.write('>');
      out.print(rsj.getString("type_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("            <div id=\"search\" align=\"center\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<script src=\"../Assets/JQ/jQuery.js\"></script>\n");
      out.write("<script>\n");
      out.write("                            function getDistrict(sid) {\n");
      out.write("                                $.ajax({\n");
      out.write("                                    url: \"../Assets/AjaxPages/AjaxDistrict.jsp?did=\" + sid,\n");
      out.write("                                    success: function(html) {\n");
      out.write("                                        $(\"#sel_district\").html(html);\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            function getPlace(did) {\n");
      out.write("                                $.ajax({\n");
      out.write("                                    url: \"../Assets/AjaxPages/AjaxPlace.jsp?did=\" + did,\n");
      out.write("                                    success: function(html) {\n");
      out.write("                                        $(\"#sel_place\").html(html);\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            function search() {\n");
      out.write("                                var state = document.getElementById('sel_state').value;\n");
      out.write("                                var dist = document.getElementById('sel_district').value;\n");
      out.write("                                var place = document.getElementById('sel_place').value;\n");
      out.write("                                var type = document.getElementById('sel_type').value;\n");
      out.write("                                $.ajax({\n");
      out.write("                                    url: \"../Assets/AjaxPages/AjaxBusinessSearch.jsp?state=\" + state + \"&dist=\" + dist + \"&place=\" + place + \"&type=\" + type,\n");
      out.write("                                    success: function(html) {\n");
      out.write("                                        $(\"#search\").html(html);\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                            }\n");
      out.write("</script>");
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
