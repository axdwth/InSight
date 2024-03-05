<%-- 
    Document   : Stock
    Created on : 25 Jan, 2024, 3:42:06 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Stock</title>
    </head>
    <body>
         <form maethod ="post">
        <div align='center'>
        <h1>STOCK</h1>
         <table border='1'>
             <% String buisnessID = session.getAttribute("bid").toString();
                int i = 0;
               String selqry = "select * from tbl_stock p inner join tbl_product d on d.product_id=p.product_id where p.product_id='"+request.getParameter("pid")+"'";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
                    %>
                <tr>
                    <td>Date</td>
                    <td>   <%=re.getString("stock_date")%>  </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>  <%=re.getString("stock_qty")%>   </td>
                    
                   <%
                }                   
                %>
                <tr>
    
                        </td>
                </tr>
         </table>
        </div>
    </body>
</html>
