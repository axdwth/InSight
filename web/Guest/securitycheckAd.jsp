<%-- 
    Document   : securitycheck
    Created on : 9 Mar, 2024, 9:46:52 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Security check</title>
        </head>
         <body>
        <div align="center">
            <br><br>
              <%
                 String AdminId = (String) session.getAttribute("aid");
    String providedAnswer = request.getParameter("txt_ansone");            
    String dbanswer = "";

    if (AdminId != null) {
        String selQryU = "SELECT * FROM tbl_admin WHERE admin_id='" + AdminId + "'";
        ResultSet rsU = con.selectCommand(selQryU);

        if (rsU.next()) {
            dbanswer = rsU.getString("answer_one");
        }

        if (request.getParameter("btn_update") != null) {
            if (dbanswer.equals(providedAnswer)) {
%>
                <script>
                    alert("Answer is correct!");
                    window.location = "../Guest/SetnewpassAd.jsp";
                </script>
<%
            } else {
%>
                <script>
                    alert("Incorrect answer. Please try again.");
                    window.location = "../Guest/securitycheck.jsp";
                </script>
<%
            }
        }
%>
<form method="post">
                <table border='1'>
                    <tr>                      
                        <td>
                            <%=rsU.getString("securityquest_one")%>                            
                        </td>
                          <td> <input type="text"name='txt_ansone'></td>
                    </tr>  
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_update" value="verify">
                        </td>            
                    </tr>
                    
                    <%
    }
                    %>
              </form>
                </div>
                   </body>
                    </html>
