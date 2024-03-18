<%-- 
    Document   : UserRegistration
    Created on : 25 Jan, 2024, 10:12:52 AM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
        <a href="../User/Myprofile.jsp"><h3>↩️Back</h3></a>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EditProfile</title>
        </head>
      <%
        String id = session.getAttribute("uid").toString();
        if (request.getParameter("btn_update") != null) {
            String updatename = request.getParameter("txt_name");
            String updateEmail = request.getParameter("txt_email");
            String updatecontact = request.getParameter("txt_contact");
            String updateaddress = request.getParameter("txt_address");
            if (updatename != null && !updatename.isEmpty() && updateEmail != null && !updateEmail.isEmpty()) {
            String update = "UPDATE tbl_user SET user_name='" + updatename + "',user_email='" + updateEmail + "',user_contact='" + updateEmail + "',user_address='" + updateaddress + "' where user_id='" + id + "'";
            con.executeCommand(update);
              out.println("updated");
            }
            }
        String sel = "select * from tbl_user where user_id='" + id + "'";
        ResultSet rs = con.selectCommand(sel);
        if (rs.next()) {


    %>

    <body>
        <div align="right"><a href="../User/HomePage.jsp"</div>
        <div align="center">
            <h1>Edit Profile</h1>
            <form method="post">
                <table border='1'>
                    <tr>
                        <td>Name</td>
                        <td> <input type="text" name='txt_name' placeholder="<%=rs.getString("user_name")%>"required="text"></td>
                    </tr>           
                    <tr>
                        <td>E-mail</td>
                        <td> <input type="text" name='txt_email' placeholder="<%=rs.getString("user_email")%>"></td>                         
                    </tr>   
                    <tr>
                        <td>contact</td>
                        <td> <input type="text" name='txt_contact' placeholder="<%=rs.getString("user_contact")%>"></td>                         
                    </tr>               
                     <tr>
                            <td>Address</td>
                            <td><textarea rows="4" cols="20" name="txt_address"placeholder="<%=rs.getString("user_address")%>"></textarea>
                            </td> 
                        </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_update" value="update">
                        </td>            
                    </tr>
                </table>
            </form>
        </div>   
    <%
        }
    %>
    </body>
</html>
