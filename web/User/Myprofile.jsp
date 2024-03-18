<%-- 
    Document   : Myprofile
    Created on : 25 Jan, 2024, 11:56:49 AM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="../User/HomePage.jsp"><h3>↩️Back</h3></a>
        <title>My Profile</title>
    </head>
    <%
        String id = session.getAttribute("uid").toString();

        String user = " select*from tbl_user where user_id='" + id + "' ";
        ResultSet rs = con.selectCommand(user);
        rs.next();

    %>
    <body>
        <form method="post">
            <div align="center">
                <h1>Myprofile</h1>
                <table border='1'>
                    <tr>
                        <td>Name</td>
                        <td>
                            <%=rs.getString("user_name")%>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <%=rs.getString("user_email")%>
                        </td>
                    </tr>
                    <tr>
                        <td>Contact</td>
                        <td>
                            <%=rs.getString("user_contact")%>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Address</td>
                        <td>
                            <%=rs.getString("user_address")%>
                        </td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td>
                          <br> <img src="../Assets/Files/<%=rs.getString("user_photo")%>"width="160"height="126s"><br>
                        </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center">
                           <a href="Editprofile.jsp">Edit profile</a>
                        </td>
                       </tr>      
                </table>
                        <br>
                        <table border="1">
                            <tr>
                                <td>✏️<a href="Changepassword.jsp">Change password</a></td>
                        </tr>
                        </table>
            </div>                        
        </form>                          
    </body>
</html>
