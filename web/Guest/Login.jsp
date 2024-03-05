<%-- 
    Document   : Login
    Created on : 17 Jan, 2024, 5:16:04 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <%
        if (request.getParameter("btn_login") != null) {
            String email = request.getParameter("txt_email");
            String password = request.getParameter("txt_password");

            String selQryU1 = "select * from tbl_admin where admin_email='" + email + "' and admin_password='" + password + "'";
            ResultSet rsU1 = con.selectCommand(selQryU1);

            String selQryU = "select * from tbl_user where user_email='" + email + "' and user_password='" + password + "'";
            ResultSet rsU = con.selectCommand(selQryU);

            String selQryB = "select * from tbl_buisness  where buisness_email='" + email + "' and buisness_password='" + password + "'";
            ResultSet rs = con.selectCommand(selQryB);

            if (rsU1.next()) {
                session.setAttribute("aname", rsU1.getString("admin_name"));
                session.setAttribute("aid", rsU1.getString("admin_id"));
                response.sendRedirect("../Admin/HomePage.jsp");

            } else if (rsU.next()) {
                session.setAttribute("uname", rsU.getString("user_name"));
                session.setAttribute("uid", rsU.getString("user_id"));
                response.sendRedirect("../User/HomePage.jsp");
            } else if (rs.next()) {

                session.setAttribute("blogo", rs.getString("buisness_logo"));
                session.setAttribute("bname", rs.getString("buisness_name"));
                session.setAttribute("bid", rs.getString("buisness_id"));
                session.setAttribute("tid", rs.getString("type_id"));
                response.sendRedirect("../Business/HomePage.jsp");
            } else {
    %>
    <script>
        alert("Invalid Credentials");
        window.location = "Login.jsp";
    </script>
    <%
            }
        }
    %>

    <body>
        <form method="post">
            <div align="center">
                <h1>Login</h1>
                <table border='1'>
                    <tr>
                        <td>E-mail</td>
                        <td> <input type="email" name='txt_email'required type="email"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> <input type="password" name='txt_password' required name="txt_pass"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_login" value="login">
                        </td>            
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
