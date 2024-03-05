<%-- 
    Document   : Stock
    Created on : 25 Jan, 2024, 3:42:06 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>ADD STOCK</title>
        </head>
    <%
        String buisnessID = session.getAttribute("bid").toString();

        if (request.getParameter("btn_save") != null) {
            String quantity = request.getParameter("productquantity").toString();
            String date = request.getParameter("productdate");
            String prid = request.getParameter("pid");
            String insqry = "insert into tbl_stock(stock_date,stock_qty,product_id)values('" + date + "','" + quantity + "','" + prid + "')";
            con.executeCommand(insqry);
            out.println("Stock added");
        }
    %>

    <body>
        <%
            if (request.getParameter("sid") != null) {
                String sid = request.getParameter("sid");
                String delQry = "delete from tbl_stock where stock_id=" + sid + "";
                con.executeCommand(delQry);
            }
        %>

        <form method ="post">
            <div align='center'>
                <h1>ADD STOCK</h1>
                <table border='1'>
                    <tr>
                        <td>Date</td>
                        <td> <input type="date"name='productdate'></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td> <input type="text"name='productquantity'></td>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Save">
                        </td>
                    </tr>
                </table>
                <table border="1">
                    <tr>
                        <td>SI No</td>
                        <td>STOCK DATE</td>
                        <td>STOCK QUANTITY</td>
                        <td>PRODUCT NAME</td>               
                        <td align ="center">Action</td>
                    </tr>
                    <%
                        int i = 0;
                        String selqry1 = "select * from tbl_stock p inner join tbl_product d on d.product_id=p.product_id where p.product_id='" + request.getParameter("pid") + "'";
                        ResultSet re = con.selectCommand(selqry1);
                        while (re.next()) {
                                    i++;%>
                    <tr>
                        <td><%=i%></td>
                        <td><%=re.getString("stock_date")%></td>
                        <td><%=re.getString("stock_qty")%></td>
                        <td><%=re.getString("product_name")%></td>
                        <td><a href ="Stock.jsp?sid=<%=re.getString("stock_id")%>">Delete</a></td>
                    </tr>
                    <%
                        }
                    %>


                </table>

            </div>
        </form>
    </body>
</html>
