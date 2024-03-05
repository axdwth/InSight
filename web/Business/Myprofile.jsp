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
        String id = session.getAttribute("bid").toString();

        String selQry = " select*from tbl_buisness where buisness_id='" + id + "' ";
        ResultSet rs = con.selectCommand(selQry);
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
                            <%=rs.getString("buisness_name")%>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <%=rs.getString("buisness_email")%>
                        </td>
                    </tr>   
                    <tr>
                        <td>Logo</td>
                        <td>
                          <br> <img src="../Assets/Files/<%=rs.getString("buisness_logo")%>"width="250"height="250"><br>
                        </td>
                    </tr> 
                    <tr>
                        <td>License</td>
                        <td>
                            <br> <img src="../Assets/Files/<%=rs.getString("buisness_license")%>"width="350"height="400"><br>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <%=rs.getString("buisness_address")%>
                        </td>
                    </tr> 
                     <td colspan="2" align="center">
                           <a href="Editprofile.jsp">Edit profile</a>
                        </td>
            </div>
        </table>
    </form>   
</body>
</html>
