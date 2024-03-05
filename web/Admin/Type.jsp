<%-- 
    Document   : Type
    Created on : 14 Jan, 2024, 2:57:21 PM
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
          String buisnessID = session.getAttribute("aid").toString();        
     if(request.getParameter("btn_save")!=null )
    {
        String type= request.getParameter("txt_name");
         String insqry= "insert into tbl_type(type_name)values('"+type+"')";
   con.executeCommand(insqry);
    }
     if(request.getParameter("did")!=null )
    {
        String id= request.getParameter("did");
         String delqry= "delete from tbl_type where type_id = "+id+"";
   con.executeCommand(delqry);
   
    }
    %>
    <body >
        <div align="center">
            <form method="POST">
                <table border="1">
                    <tr>
                        <td>Enter Type</td>
                        <td><input type="text" name="txt_name"></td>
                    </tr>
                  
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Save">
                        </td>
                    </tr>
                </table>
            </form>
            <table border="1">
                <tr>
                    <td>slno</td>
                    <td>Typename</td>
                    <td>action</td>   
                </tr>
                  <%
                    int i=0;
                    String selQry = "select * from tbl_type";
                    ResultSet rs = con.selectCommand(selQry);
                    while(rs.next())
                    {
                        i++;
                    
                        %> 
        
                <tr>
                <td><%=i%></td>
                <td><%=rs.getString("type_name")%></td>
                <td> <a href="Type.jsp?did=<%=rs.getString("type_id")%>">Delete </a></td>
                    </tr>
                    <%
                    }
                        %>
            </table>
        </div>
    </body>
</html>
