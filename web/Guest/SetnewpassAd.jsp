<%-- 
    Document   : Setnewpass
    Created on : 9 Mar, 2024, 10:47:12 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
          String adminID = session.getAttribute("aid").toString();
            if (request.getParameter("btn_change") != null) {
            String newpassword = request.getParameter("txt_newpass");
            String repassword = request.getParameter("txt_rnewpass");       
            String select = "Select admin_password from tbl_admin where admin_id='" + adminID + "'";
            ResultSet rs = con.selectCommand(select);
            if (rs.next()) {
                if (!repassword.equals(newpassword)) {
                    out.println("Re-entered Passwords not matching");
                } else {
                    String updateqry = "update tbl_admin set admin_password='" + newpassword + "'where admin_id='" + adminID + "'";
                    con.executeCommand(updateqry);
                    %>
                                        <script>
                    alert("Password changed!");
                    window.location = "../Guest/Login.jsp";
                </script>
<%
                }
            }
        }
            %>
    <body>
        <br> 
        <div align="center">
      
                          <form method="post">
            <table border='1'>
                    <td>New password</td>
                    <td> <input type="text" name='txt_newpass'required="text"></td>
                </tr>
              <tr>
                    <td>Re-EnterNewPassword</td>
                    <td> <input type="password" name='txt_rnewpass'></td>
                </tr>
              <tr>
                   <td colspan="2" align="center">
                        <input type="submit" name="btn_change" value="Update">
                    </td>            
              </tr>
            </table>
         </form>
          </div>
    </body>
</html>
