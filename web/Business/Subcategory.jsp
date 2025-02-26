<%-- 
    Document   : subcategory
    Created on : 15 Jan, 2024, 2:07:38 PM
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

        if (request.getParameter("btn_save") != null) {
            String category = request.getParameter("category");
            String subcategory = request.getParameter("txt_name");
            String insqry = "insert into tbl_subcategory(subcategory_name,category_id)values('" + subcategory + "','" +category+ "')";
            con.executeCommand(insqry);
        }

        if (request.getParameter("subid") != null) {
            String id = request.getParameter("subid");
            String delQry = "delete from tbl_subcategory where subcategory_id=" + id + "";
            con.executeCommand(delQry);
        }
    %>
   
    <body>
        <div align="center">
        <form method="POST">
                <table border="1">
                    <tr>
                       <td>Category</td>
           <td>
          <select name="category" id="category">
            <option value="choose">--select--</option>
             <%
                                String selQry = "select * from tbl_category";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("category_id")%>"><%=rs.getString("category_name")%></option>
                            <%
                                }
                            %>

            </select>
           </td>
                    </tr>
           
                     <tr>
                        <td>Subcategory</td>
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
                <td>SubCategory</td>
                 <td>Category</td>
                <td>Action</td>
            </tr>
            <%
                int i = 0;
                String selqry = "select * from tbl_subcategory p inner join tbl_category d on d.category_id=p.category_id";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("subcategory_name")%></td>
                <td><%=re.getString("category_name")%></td>
                <td><a href="Subcategory.jsp?subid=<%=re.getString("subcategory_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %> 
       
            </form>
            </div>
    </body>
</html>
