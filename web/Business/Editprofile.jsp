<%-- 
    Document   : Editprofile
    Created on : 28 Jan, 2024, 2:26:29 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Edit Profile</title>
        </head>
    <%
        String id = session.getAttribute("bid").toString();
        if (request.getParameter("btn_update") != null) {
            String updatename = request.getParameter("txt_name");
            String updateEmail = request.getParameter("txt_email");
            String updateaddress = request.getParameter("txt_adress");
            if (updatename != null && !updatename.isEmpty() && updateEmail != null && !updateEmail.isEmpty()) {
            String update = "UPDATE tbl_buisness SET buisness_name='" + updatename + "',buisness_email='" + updateEmail + "',buisness_address='" + updateaddress + "' where buisness_id='" + id + "'";
            con.executeCommand(update);
            out.println("Changed");
            }
            }
        String sel = "select * from tbl_buisness where buisness_id='" + id + "'";
        ResultSet rs = con.selectCommand(sel);
        if (rs.next()) {


    %>

    <body>
        <div align="center">
            <h1>Edit Profile</h1>
            <form method="post">
                <table border='1'>
                    <tr>
                        <td>Name</td>
                        <td> <input type="text" name='txt_name' placeholder="<%=rs.getString("buisness_name")%>"></td>
                    </tr>           
                    <tr>
                        <td>E-mail</td>
                        <td> <input type="text" name='txt_email' placeholder="<%=rs.getString("buisness_email")%>"></td>                         
                    </tr> 
                     
                    <tr>
                          <td>Address</td>
                            <td><textarea rows="4" cols="20" name="txt_address"placeholder="<%=rs.getString("buisness_address")%>"></textarea>
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
    </body>
    <%
        }
    %>
</html>
