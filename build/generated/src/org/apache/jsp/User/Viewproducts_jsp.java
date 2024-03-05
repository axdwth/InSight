package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Viewproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search</title>\n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Popper JS -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .custom-alert-box{\n");
      out.write("                width: 20%;\n");
      out.write("                height: 10%;\n");
      out.write("                position: fixed;\n");
      out.write("                bottom: 0;\n");
      out.write("                right: 0;\n");
      out.write("                left: auto;\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .success {\n");
      out.write("                color: #3c763d;\n");
      out.write("                background-color: #dff0d8;\n");
      out.write("                border-color: #d6e9c6;\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .failure {\n");
      out.write("                color: #a94442;\n");
      out.write("                background-color: #f2dede;\n");
      out.write("                border-color: #ebccd1;\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .warning {\n");
      out.write("                color: #8a6d3b;\n");
      out.write("                background-color: #fcf8e3;\n");
      out.write("                border-color: #faebcc;\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"custom-alert-box\">\n");
      out.write("            <div class=\"alert-box success\">Successful Added to Cart !!!</div>\n");
      out.write("            <div class=\"alert-box failure\">Failed to Add Cart !!!</div>\n");
      out.write("            <div class=\"alert-box warning\">Already Added to Cart !!!</div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("                    <h5>Filter Product</h5>\n");
      out.write("                    <hr>\n");
      out.write("                    <h6 class=\"text-info\"> Select Category</h6>\n");
      out.write("                    <ul class=\"list-group\">\n");
      out.write("                        ");
                            String selC = "SELECT * from tbl_category where type_id='"+request.getParameter("tid")+"'";
                            ResultSet rsC = con.selectCommand(selC);
                            while (rsC.next()) {
                        
      out.write("\n");
      out.write("                        <li class=\"list-group-item\">\n");
      out.write("                            <div class=\"form-check\">\n");
      out.write("                                <label class=\"form-check-label\">\n");
      out.write("                                    <input type=\"checkbox\" class=\"form-check-input product_check\" value=\"");
      out.print(rsC.getString("category_id"));
      out.write("\" id=\"category\">");
      out.print(rsC.getString("category_name"));
      out.write("\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <h6 class=\"text-info\"> Select Subcategory</h6>\n");
      out.write("                    <ul class=\"list-group\">\n");
      out.write("                        ");
                            String selS = "SELECT * from tbl_subcategory";
                            ResultSet rsS = con.selectCommand(selS);
                            while (rsS.next()) {
                        
      out.write("\n");
      out.write("                        <li class=\"list-group-item\">\n");
      out.write("                            <div class=\"form-check\">\n");
      out.write("                                <label class=\"form-check-label\">\n");
      out.write("                                    <input type=\"checkbox\" class=\"form-check-input product_check\" value=\"");
      out.print(rsS.getString("subcategory_id"));
      out.write("\" id=\"subcategory\">");
      out.print(rsS.getString("subcategory_name"));
      out.write("\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-9\">\n");
      out.write("                    <h5 class=\"text-center\" id=\"textChange\">All Products</h5>\n");
      out.write("                    <hr>\n");
      out.write("                    <div class=\"text-center\">\n");
      out.write("                        <img src=\"../Assets/Template/loader.gif\" id='loder' width=\"200\" style=\"display: none\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\" id=\"result\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("            function addCart(id)\n");
      out.write("            {\n");
      out.write("                $.ajax({\n");
      out.write("                    url: \"../Assets/AjaxPages/AjaxAddCart.jsp?id=\" + id,\n");
      out.write("                    success: function(response) {\n");
      out.write("                        if (response.trim() === \"Added to Cart\")\n");
      out.write("                        {\n");
      out.write("                            $(\"div.success\").fadeIn(300).delay(1500).fadeOut(400);\n");
      out.write("                        }\n");
      out.write("                        else if (response.trim() === \"Already Added to Cart\")\n");
      out.write("                        {\n");
      out.write("                            $(\"div.warning\").fadeIn(300).delay(1500).fadeOut(400);\n");
      out.write("                        }\n");
      out.write("                        else\n");
      out.write("                        {\n");
      out.write("                            $(\"div.failure\").fadeIn(300).delay(1500).fadeOut(400);\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            function buyNow(id, amt)\n");
      out.write("            {\n");
      out.write("                $.ajax({\n");
      out.write("                    url: \"../Assets/AjaxPages/AjaxBuy.jsp?id=\" + id + \"&amt=\" + amt,\n");
      out.write("                    success: function(response) {\n");
      out.write("                        if (response !== \"false\")\n");
      out.write("                        {\n");
      out.write("                            window.location = \"Payment.jsp\";\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("            $(document).ready(function() {\n");
      out.write("\n");
      out.write("                $(\".product_check\").click(function() {\n");
      out.write("                    $(\"#loder\").show();\n");
      out.write("\n");
      out.write("                    var action = 'data';\n");
      out.write("                    var category = get_filter_text('category');\n");
      out.write("                    var subcategory = get_filter_text('subcategory');\n");
      out.write("\n");
      out.write("                    $.ajax({\n");
      out.write("                        url: \"../Assets/AjaxPages/AjaxSearch.jsp?action=\" + action + \"&category=\" + category + \"&subcategory=\" + subcategory+\"&bid=\"+");
      out.print(request.getParameter("bid"));
      out.write(",\n");
      out.write("                        success: function(response) {\n");
      out.write("                            $(\"#result\").html(response);\n");
      out.write("                            $(\"#loder\").hide();\n");
      out.write("                            $(\"#textChange\").text(\"Filtered Products\");\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                function get_filter_text(text_id)\n");
      out.write("                {\n");
      out.write("                    var filterData = [];\n");
      out.write("\n");
      out.write("                    $('#' + text_id + ':checked').each(function() {\n");
      out.write("                        filterData.push($(this).val());\n");
      out.write("                    });\n");
      out.write("                    return filterData;\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
