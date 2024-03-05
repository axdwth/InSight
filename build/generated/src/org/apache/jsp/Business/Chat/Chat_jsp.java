package org.apache.jsp.Business.Chat;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Chat_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html lang=\"en\">\n");
      out.write("\n");
      out.write("        <head>\n");
      out.write("            <!-- Required meta tags -->\n");
      out.write("            <meta charset=\"utf-8\">\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("            <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("\n");
      out.write("            <title>Chat</title>\n");
      out.write("            <link rel=\"icon\" type=\"image/png\" href=\"../../Assets/Template/friendskit/assets/img/favicon.png\" />\n");
      out.write("            <!-- Fonts -->\n");
      out.write("            <link href=\"https://fonts.googleapis.com/css?family=Roboto:400,500\" rel=\"stylesheet\">\n");
      out.write("            <!-- Core CSS -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"../../Assets/Template/friendskit/assets/css/app.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"../../Assets/Template/friendskit/assets/css/core.css\">\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("    ");

        response.setHeader("Cache-Control", "no-cache, no-store");
        if (session.getAttribute("cid") == null) {
            response.sendRedirect("../../");
        }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- Pageloader -->\n");
      out.write("        <div class=\"pageloader\"></div>\n");
      out.write("        <div class=\"infraloader is-active\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"chat-wrapper is-standalone\">\n");
      out.write("            <div class=\"chat-inner\">\n");
      out.write("\n");
      out.write("                <!-- Chat top navigation -->\n");
      out.write("                <div class=\"chat-nav\">\n");
      out.write("                    <div class=\"nav-start\">\n");
      out.write("                        <div class=\"recipient-block\">\n");
      out.write("                            <div class=\"avatar-container\">\n");
      out.write("                                <img class=\"user-avatar\" src=\"");
      out.print(session.getAttribute("cphoto"));
      out.write("\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"username\">\n");
      out.write("                                <span>");
      out.print(session.getAttribute("cname"));
      out.write("(College Group)</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"nav-end\">\n");
      out.write("\n");
      out.write("                        <a href=\"../HomePage.jsp\" class=\"chat-nav-item is-icon is-hidden-mobile\">\n");
      out.write("                            <i data-feather=\"home\"></i>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Chat sidebar -->\n");
      out.write("                <div id=\"chat-sidebar\" class=\"users-sidebar\">   \n");
      out.write("                    <!-- User list -->\n");
      out.write("                    <div class=\"conversations-list has-slimscroll-xs\">\n");
      out.write("                        <!-- User -->\n");
      out.write("                        ");

                            String selQry = "select * from tbl_department where college_id='" + session.getAttribute("cid") + "'";
                            ResultSet rs = con.selectCommand(selQry);
                            while (rs.next()) {
                        
      out.write("\n");
      out.write("                        <div class=\"user-item\">\n");
      out.write("                            <div class=\"avatar-container\">\n");
      out.write("                                <img class=\"user-avatar\" style=\"width: 32px; height:32px \"  src=\"");
      out.print(rs.getString("department_photo"));
      out.write("\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Chat body -->\n");
      out.write("                <div id=\"chat-body\" class=\"chat-body\">\n");
      out.write("                    <!-- Conversation -->\n");
      out.write("                    <div id=\"conversation\" class=\"chat-body-inner has-slimscroll\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Compose message area -->\n");
      out.write("                    <div class=\"chat-action\">\n");
      out.write("                        <div class=\"chat-action-inner\">\n");
      out.write("                            <div class=\"control\" style=\"text-align: center\">\n");
      out.write("                                <textarea class=\"textarea comment-textarea\" id=\"msg\" rows=\"2\"></textarea>\n");
      out.write("                                <input type=\"button\" value=\"Send\" name=\"btn_send\"  id=\"btn_send\" onclick=\"sendChat()\"\n");
      out.write("                                       style=\"border: none;background-color: #5082c3;border-radius: 15px 10px; color: white;\n");
      out.write("                                       margin: 10px; margin-bottom: 30px ; width: 30%; height: 25px\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"../../Assets/Template/JQuery/jQuery.js\"></script>\n");
      out.write("        <script>\n");
      out.write("                                    function deleteChat(id)\n");
      out.write("                                    {\n");
      out.write("                                        var text = \"Press a button!\\nEither OK or Cancel.\";\n");
      out.write("                                        if (confirm(text) == true) {\n");
      out.write("                                            $.ajax({\n");
      out.write("                                                url: \"AjaxDelete.jsp\",\n");
      out.write("                                                type: \"POST\",\n");
      out.write("                                                data: {cid: id},\n");
      out.write("                                                success: function(result) {\n");
      out.write("\n");
      out.write("                                                }\n");
      out.write("                                            });\n");
      out.write("                                        } else {\n");
      out.write("                                            text = \"You canceled!\";\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script src=\"chat.js\"></script>\n");
      out.write("        <!-- Concatenated js plugins and jQuery -->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/app.js\"></script>\n");
      out.write("        <script src=\"https://js.stripe.com/v3/\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/data/tipuedrop_content.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Core js -->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/global.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Navigation options js -->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/navbar-v1.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/navbar-v2.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/navbar-mobile.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/navbar-options.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/sidebar-v1.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Core instance js -->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/main.js\"></script>\n");
      out.write("        <!--        <script src=\"../../Assets/Template/friendskit/assets/js/chat.js\"></script>-->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/touch.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/tour.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Components js -->\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/explorer.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/widgets.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/modal-uploader.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/popovers-users.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/popovers-pages.js\"></script>\n");
      out.write("        <script src=\"../../Assets/Template/friendskit/assets/js/lightbox.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
