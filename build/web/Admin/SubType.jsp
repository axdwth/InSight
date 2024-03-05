<%-- 
    Document   : subtype
    Created on : 15 Jan, 2024, 2:07:59 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

        if (request.getParameter("btn_save") != null) {
            String type = request.getParameter("type");
            String subtype = request.getParameter("txt_name");
            String insqry = "insert into tbl_subtype(subtype_name,type_id)values('" + subtype + "','" +type+ "')";
            con.executeCommand(insqry);
        }

        if (request.getParameter("did") != null) {
            String id = request.getParameter("did");
            String delQry = "delete from tbl_subtype where subtype_id=" + id + "";
            con.executeCommand(delQry);
        }
    %>
   
    <body>
        <div align="center">
       <form method="POST">
                <table border="1">
                    <tr>
                       <td>type</td>
           <td>
          <select name="type" id="type">
            <option value="choose">--select--</option>
             <%
                                String selQry = "select * from tbl_type";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("type_id")%>"><%=rs.getString("type_name")%></option>
                            <%
                                }
                            %>

        
            </select>
           </td>
                    </tr>
           
                     <tr>
                        <td>subtype</td>
                        <td><input type="text" name="txt_name"></td>
                    </tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Save">
                        </td>
                    </tr>
                </table>
                             <table border="1">
            <tr>
                <td>Sl.no</td>
                <td>category</td>
                <td>Action</td>
            </tr>
            <%
                int i = 0;
                String selqry = "select * from tbl_subtype p inner join tbl_type d on d.type_id=p.type_id";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("subtype_name")%></td>
                <td><%=re.getString("type_name")%></td>
                <td><a href="SubType.jsp?did=<%=re.getString("subtype_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %> 
       
            </form>
         
            </div>
    </body>
</html>
