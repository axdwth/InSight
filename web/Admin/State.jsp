<%-- 
    Document   : State
    Created on : 20 Jan, 2024, 2:24:17 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>State</title>
    <body>
        </head>
    <%

        if (request.getParameter("btn_save") != null) {
            String State = request.getParameter("state_name");
            String insqry = "insert into tbl_state(state_name)values('" + State + "')";
            con.executeCommand(insqry);
        }
       
        
         if (request.getParameter("did") != null) {
            String id = request.getParameter("did");
            String delQry  = "delete from tbl_state where state_id=" + id + "";
            con.executeCommand(delQry);
        }
    %>
    <body >
        <div align="center">
            <form method="POST">
                <table border="1">
                    <tr>
                        <td>Enter State</td>
                        <td><input type="text" name="state_name"></td>
                    </tr>
                    <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_save" value="Save">
                    </td>
                    </tr>
                </table>
            </form>
            <table border="1">
                <tr>
                    <td>Sl.no</td>
                    <td>State</td>
                    <td>Action</td>
                </tr>
                <%
                    int i = 0;
                    String selQry = "select * from tbl_state";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("state_name")%></td>
                    <td><a href="State.jsp?did=<%=rs.getString("state_id")%>">Delete</a></td>
                </tr>
                <%
                    }
                %> 
            </table>
        </div>
    </body>

    </body>
</html>
