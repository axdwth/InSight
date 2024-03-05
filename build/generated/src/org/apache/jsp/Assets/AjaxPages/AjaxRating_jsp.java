package org.apache.jsp.Assets.AjaxPages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import org.json.JSONObject;
import org.json.JSONArray;

public final class AjaxRating_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
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
      out.write('\n');


    if (request.getParameter("rating_data") != null) {

        String ins = "INSERT INTO tbl_review(user_name,user_rating,user_review,review_datetime,product_id)"
                + "VALUES('" + request.getParameter("user_name") + "','" + request.getParameter("rating_data") + "','" + request.getParameter("user_review") + "',SYSDATE(),'" + request.getParameter("pid") + "')";

        if (con.executeCommand(ins)) {
            out.println("Your Review & Rating Successfully Submitted");
            System.out.println("Your Review & Rating Successfully Submitted");
        } else {
            System.out.println("Your Review & Rating Insertion Failed");
        }

    }

    if (request.getParameter("action") != null) {
        int average_rating = 0;
        int total_review = 0;
        int five_star_review = 0;
        int four_star_review = 0;
        int three_star_review = 0;
        int two_star_review = 0;
        int one_star_review = 0;
        int total_user_rating = 0;

        String query = "SELECT * FROM tbl_review where product_id = '" + request.getParameter("id") + "' ORDER BY review_id DESC";

        ResultSet rs = con.selectCommand(query);

        JSONObject b = new JSONObject();
        JSONArray J = new JSONArray();

        while (rs.next()) {
            JSONObject a = new JSONObject();
            a.put("user_name", rs.getString("user_name"));
            a.put("user_review", rs.getString("user_review"));
            a.put("rating", rs.getString("user_rating"));
            a.put("datetime", rs.getString("review_datetime"));

            J.put(a);

            if (rs.getString("user_rating").equals("5")) {
                five_star_review++;
            }
            if (rs.getString("user_rating").equals("4")) {
                four_star_review++;
            }
            if (rs.getString("user_rating").equals("3")) {
                three_star_review++;
            }
            if (rs.getString("user_rating").equals("2")) {
                two_star_review++;
            }
            if (rs.getString("user_rating").equals("1")) {
                one_star_review++;
            }

            total_review++;

            total_user_rating = total_user_rating + rs.getInt("user_rating");

        }

        if (total_user_rating != 0 || total_review != 0) {
            average_rating = total_user_rating / total_review;
        }

        b.put("average_rating", average_rating);
        b.put("total_review", total_review);
        b.put("five_star_review", five_star_review);
        b.put("four_star_review", four_star_review);
        b.put("three_star_review", three_star_review);
        b.put("two_star_review", two_star_review);
        b.put("one_star_review", one_star_review);
        b.put("review_data", J);

        out.println(b);
    }


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
