<%-- 
    Document   : Changepassword
    Created on : 25 Jan, 2024, 12:11:31 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="../User/Myprofile.jsp"><h3>↩️Back</h3></a>
        <title>ChangePassword</title>
    </head>
    <%
          String userID = session.getAttribute("uid").toString();
            if (request.getParameter("btn_change") != null) {
            String oldpassword = request.getParameter("txt_oldpass");
            String newpassword = request.getParameter("txt_newpass");
            String repassword = request.getParameter("txt_rnewpass");
            String dbpassword = "";
            String select = "Select user_password from tbl_user where user_id='" + userID + "'";
            ResultSet rs = con.selectCommand(select);
            if (rs.next()) {
                dbpassword = rs.getString("user_password");
            }
            if (!oldpassword.equals(dbpassword)) {
                out.println("Old Password is wrong");
            } else {
                if (!repassword.equals(newpassword)) {
                    out.println("Re-entered Passwords not matching");
                } else {
                    String updateqry = "update tbl_user set user_password='" + newpassword + "'where user_id='" + userID + "'";
                    con.executeCommand(updateqry);
                                        out.println("Password Changed");

                }
            }
        }

%>
    <style>
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            font-size: 16px;
        }

        .alert-success {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #d6e9c6;
        }

        .alert-danger {
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }
    </style>
    <body>
          <div align="center">
        <h1>ChangePassword</h1>
                          <form method="post">
            <table border='1'>
                <tr>
                    <td>Old password</td>
                    <td> <input type="password" name='txt_oldpass'></td>
                </tr>
                <tr>
                    <td>New password</td>
                    <td> <input type="text" name='txt_newpass'></td>
                </tr>
              <tr>
                    <td>Re-EnterNewPassword</td>
                    <td> <input type="password" name='txt_rnewpass'></td>
                </tr>
              <tr>
                   <td colspan="2" align="center">
                        <input type="submit" name="btn_change" value="✅">
                    </td>            
              </tr>
         </form>
          </div>
    </body>
</html>
