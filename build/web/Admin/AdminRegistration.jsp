<%-- 
    Document   : AdminRegistration
    Created on : 17 Jan, 2024, 5:15:31 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>AdminRegistration</title>
        </head>
        <body>
            <div align="center">
            <%
                if (request.getParameter("btn_save") != null) {
                    String name = request.getParameter("Adminname");
                    String email = request.getParameter("Adminemail");
                    String pass = request.getParameter("Adminpassword");
                    String insqry = "insert into tbl_admin(admin_name,admin_email,admin_password)values('" + name + "','" + email + "','" + pass + "')";
                    con.executeCommand(insqry);
                }
            %>
            <h1>AdminRegistration</h1>
            <form method="post">
                <div align="center">
                <table border='1'>
                    <tr>
                        <td>Name</td>
                        <td> <input type="text" name='Adminname'></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="text" name="Adminemail"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> <input type="password" name="Adminpassword"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Save">
                            <input type="submit" name="btn_cancel" value="Cancel">
                        </td>
                    </tr> 
            </form>
        </div>
    </body>
</html>
