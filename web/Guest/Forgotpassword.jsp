<%-- 
    Document   : emailverify
    Created on : 9 Mar, 2024, 9:33:26 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgotpassword</title>
    </head>
    <form method="POST">
    <body>
<%if (request.getParameter("btn_submit") != null) {
            String email = request.getParameter("txt_email");
     
            String selQryU1 = "select * from tbl_admin where admin_email='" + email + "'";
            ResultSet rsU1 = con.selectCommand(selQryU1);
            System.out.println("admin_id in session: " + session.getAttribute("aid"));

            String selQryU = "select * from tbl_user where user_email='" + email + "'";
            ResultSet rsU = con.selectCommand(selQryU);
            System.out.println("user_id in session: " + session.getAttribute("uid"));

            String selQryB = "select * from tbl_buisness  where buisness_email='" + email + "'";
            ResultSet rs = con.selectCommand(selQryB);

            if (rsU1.next()) {
               
                session.setAttribute("aid", rsU1.getString("admin_id"));
                response.sendRedirect("../Guest/securitycheckAd.jsp");

            } else if (rsU.next()) {
                
                session.setAttribute("uid", rsU.getString("user_id"));
                response.sendRedirect("../Guest/securitycheck.jsp");
            } else if (rs.next()) {
        
                session.setAttribute("bid", rs.getString("buisness_id"));
               
                response.sendRedirect("../Guest/securitycheck.jsp");
            } else {
    %>
    <script>
        alert("Invalid email");
        window.location = "Forgotpassword.jsp";
    </script>
    <%
                
            }
        }
    %>

    <body>
        <form method="post">
            <div align="center">
                <h1></h1>
                <table border='1'>
                    <tr>
                        <td>E-mail</td>
                        <td> <input type="email" name='txt_email'required type="email"></td>
                    </tr>
                        
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_submit" value="verify">
                        </td>            
                    </tr>
                </table>
            </div>
            
        </form>
    </body>
</html>

    </body>
</html>
