<%-- 
    Document   : Product
    Created on : 25 Jan, 2024, 3:24:47 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
              <a href="../Business/HomePage.jsp"><h3>↩️Back</h3></a>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>VIEWPRODUCTS</title>
        </head>
        <body>
               
            <%
              String businessID = session.getAttribute("bid").toString(); 
            %>
        <div align="center">
            <h1>PRODUCTS</h1>
        
            <table border="1">
            <tr>
                <td>SI No</td>
                <td>Product Name</td>
                <td>product Details</td>
                <td>product Photo</td>
                <td>product price</td>
                <td align ="center" colspan="4">Action</td>
            </tr>
            <%
                  String buisnessID = session.getAttribute("bid").toString();
                int i = 0;
               String selqry = "select * from tbl_product p inner join tbl_buisness d on d.buisness_id=p.buisness_id where p.buisness_id='"+buisnessID+"'";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            
            %>
            
              <%
            if (request.getParameter("did") != null) {
                String did = request.getParameter("did");
                String delQry = "delete from tbl_product where product_id=" + did + "";
                con.executeCommand(delQry);
            }
        %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("product_name")%></td>
                <td><%=re.getString("product_details")%></td>
                <td><img src="../Assets/Files/<%=re.getString("product_photo")%>"width="150"height="150"></td>
                <td><%=re.getString("product_price")%></td>              
               <td><a href="Stock.jsp?pid=<%=re.getString("product_id")%>">ADDSTOCK</a></td>
               <td><a href="ViewStock.jsp?pid=<%=re.getString("product_id")%>">VIEWSTOCK</a></td>
                <td><a href="Viewproduct.jsp?did=<%=re.getString("product_id")%>">DELETE</a></td>
            </tr>
            <%
                }
            %>  
         
            </table>
        </div>
</body>
</html>
