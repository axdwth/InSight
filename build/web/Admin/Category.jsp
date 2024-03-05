<%-- 
    Document   : Category
    Created on : 14 Jan, 2024, 2:56:49 PM
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
              
     if(request.getParameter("btn_save")!=null )
    {
        String cat= request.getParameter("category_name");
         String type= request.getParameter("sel_type");
        
         String insqry= "insert into tbl_category(category_name,type_id)values('"+cat+"','"+type+"')";
   con.executeCommand(insqry);
    }
      if(request.getParameter("cid")!=null )
    {
        String id= request.getParameter("cid");
         String delqry= "delete from tbl_category where category_id="+id+"";
   con.executeCommand(delqry);
    }
    
    %>
    <body >
        <div align="center">
            <form method="POST">
                <table border="1">
                    <tr>
                        <td>Enter Category</td>
                        <td><input type="text" name="category_name"></td>
                    </tr><tr>
                        <td>Type</td>
                    <td>
                        <select name="sel_type" id="sel_type">
                            <option value="">--select--</option>
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
                    </td>                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="save">
                        </td>
                    </tr>
                </table>
            </form>
            <table border="1">
                <td>slno</td>
                <td>categoryname</td>
                <td>Type</td>
                <td>action</td>
            
            <%
              int i = 0;
                String selqry1 = "select * from tbl_category p inner join tbl_type d on d.type_id=p.type_id";
                ResultSet re = con.selectCommand(selqry1);
                while (re.next()) {
                    i++;         %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("category_name")%></td>
                 <td><%=re.getString("type_name")%></td>
                <td><a href ="Category.jsp?cid=<%=re.getString("category_id")%>">delete</a></td>
            </tr>
            <%
     }
            %>
            </table>
        </div>
    </body>
</html>