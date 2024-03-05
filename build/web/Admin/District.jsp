<%-- 
    Document   : District
    Created on : 13 Jan, 2024, 12:37:03 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>District</title>
    </head>
    <%
  
        if (request.getParameter("btn_save") != null) {
            String State = request.getParameter("sel_state");
             String District = request.getParameter("txt_district");
            String insqry = "insert into tbl_district(district_name,state_id)values('" + District + "','" + State + "')";
            con.executeCommand(insqry);
        }
       
        
         if (request.getParameter("did") != null) {
            String id = request.getParameter("did");
            String delQry  = "delete from tbl_district where district_id=" + id + "";
            con.executeCommand(delQry);
        }
    %>
    <body>
        <div align='center'>
            <h1>Select district </h1>
        <form method="POST">
            <table border="1">
                <tr>
                    <td>State</td>
                    <td>
                        <select name="sel_state" id="sel_state">
                            <option value="">--select--</option>
                            <%
                                String selQry = "select * from tbl_state";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("state_id")%>"><%=rs.getString("state_name")%></option>
                            <%
                                }
                            %> 
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>District</td>
                    <td><input type="text" name="txt_district"></td>
                </tr>
                <td colspan="2" align="center">
                    <input type="submit" name="btn_save" value="Save">
                </td> 
                </tr>
            </table>
        </form>
                        <br>
        <table border="1">
            <tr>
                <td>SI++ No</td>
                <td>State Name</td>
                <td>District Name</td>
                <td>Action</td>
            </tr>
            <%
                int i = 0;
                String selqry = "select * from tbl_district p inner join tbl_state d on d.state_id=p.state_id";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("state_name")%></td>
                <td><%=re.getString("district_name")%></td>
                <td><a href="District.jsp?did=<%=re.getString("district_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %> 
        </table>
        </div>
    </body>
</html>
