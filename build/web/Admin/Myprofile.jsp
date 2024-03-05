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
    </head>
    <%
        String id = session.getAttribute("aid").toString();

        String admin = " select*from tbl_admin where admin_id='" + id + "' ";
        ResultSet rs = con.selectCommand(admin);
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
                            <%=rs.getString("admin_name")%>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <%=rs.getString("admin_email")%>

                        </td>
                    </tr>   
                      <td colspan="2" align="center">
                           <a href="Editprofile.jsp">Edit profile</a>
                        </td>
               
            </div>
        </form>         
    </body>
</html>
