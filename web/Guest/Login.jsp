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
        <script type = "text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 0);
            window.onunload = function() {
                null
            };
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <%@include file="Head.jsp" %>
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
        <div class="page-section mb-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                        <!-- Login Form s-->
                        <form action="#" method="post">
                            <div class="login-form">
                                <h4 class="login-title">Login</h4>
                                <div class="row">
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Email Address*</label>
                                        <input class="mb-0" type="email" name="txt_email" placeholder="Email Address">
                                    </div>
                                    <div class="col-12 mb-20">
                                        <label>Password</label>
                                        <input class="mb-0" type="password" name="txt_password" placeholder="Password">
                                    </div>
                                    <div class="col-md-8">
                                        
                                    </div>
                                    <div class="col-md-4 mt-10 mb-20 text-left text-md-right">
                                        <a href="Forgotpassword.jsp"> Forgotten password?</a>
                                    </div>
                                    <div class="col-md-12">
                                        <button class="register-button mt-0" name="btn_login" type="submit">Login</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                        <img src="../Assets/Template/main/images/ecommerce.png"height="420"width="510">
                    </div>
                </div>
            </div>
        </div>


    </body>
    <script>
        const inputField = document.getElementById('txt_password');
                inputField.addEventListener('paste', e = > e.preventDefault());
    </script>
    <%@include file="Foot.jsp" %>
</html>

