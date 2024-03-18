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
         <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ChangePassword</title>
    </head>
    <%

        String adminID = session.getAttribute("aid").toString();
        if (request.getParameter("btn_update") != null) {
            String oldpassword = request.getParameter("txt_oldpass");
            String newpassword = request.getParameter("txt_newpass");
            String repassword = request.getParameter("txt_rnewpass");
            String dbpassword = "";
            String sel = "Select admin_password from tbl_admin where admin_id='" + adminID + "'";
            ResultSet rs = con.selectCommand(sel);
            if (rs.next()) {
                dbpassword = rs.getString("admin_password");
            }
            if (!oldpassword.equals(dbpassword)) {
                out.println("Old Password is wrong");
            } else {
                if (!repassword.equals(newpassword)) {
                    out.println("Re-entered Passwords not matching");
                } else {
                    String updateqry = "update tbl_admin set admin_password='" + newpassword + "'where admin_id='" + adminID + "'";
                    con.executeCommand(updateqry);
                                        out.println("Changed");

                }
            }
        }
    %>
    <body>
        <div align="center">
            <h1>ChangePassword</h1>
            <form method="post" >
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
                            <input type="submit" name="btn_update" value="Change">
                        </td>            
                    </tr>
                </table>
        </div>
    </body>
</html>