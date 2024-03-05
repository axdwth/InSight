<%-- 
    Document   : place
    Created on : 15 Jan, 2024, 12:53:09 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place</title>
    </head>
    <%

        if (request.getParameter("btn_save") != null) {
            String District = request.getParameter("sel_district");
            String Place = request.getParameter("txt_place");
            String insqry = "insert into tbl_place(place_name,district_id)values('" + Place + "','" + District + "')";
            con.executeCommand(insqry);
        }

        if (request.getParameter("did") != null) {
            String id = request.getParameter("did");
            String delQry = "delete from tbl_place where place_id=" + id + "";
            con.executeCommand(delQry);
        }
    %>
    <body>
        <div align='center'>
            <h1>Select Place</h1>
            <form method="POST">
                <table border="1">
                    <tr>
                        <td>District</td>
                        <td>
                            <select name="sel_district" id="sel_district">
                                <option value="">--select--</option>
                                <%
                                    String selQry = "select * from tbl_district";
                                    ResultSet rs = con.selectCommand(selQry);
                                    while (rs.next()) {
                                %>
                                <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                                <%
                                    }
                                %> 
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Place</td>
                        <td><input type="text" name="txt_place"></td>
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
                    <td>SI No</td>
                    <td>District Name</td>
                    <td>Place Name</td>
                    <td>Action</td>
                </tr>
                <%
                    int i = 0;
                    String selqry = "select * from tbl_place p inner join tbl_district d on d.district_id=p.district_id";
                    ResultSet re = con.selectCommand(selqry);
                    while (re.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=re.getString("district_name")%></td>
                    <td><%=re.getString("place_name")%></td>
                    <td><a href="Place.jsp?did=<%=re.getString("place_id")%>">Delete</a></td>
                </tr>
                <%
                    }
                %> 
            </table>
        </div>
    </body>
</html>
