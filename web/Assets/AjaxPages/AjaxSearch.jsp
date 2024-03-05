<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("action") != "") {

        String sqlQry = "select * from tbl_product p inner join tbl_subcategory sc on sc.subcategory_id=p.subcategory_id inner join tbl_category c on c.category_id=sc.category_id where buisness_id='"+request.getParameter("bid")+"'";
        String row = "SELECT count(*) as count from tbl_product p inner join tbl_subcategory sc on sc.subcategory_id=p.subcategory_id inner join tbl_category c on c.category_id=sc.category_id where buisness_id='"+request.getParameter("bid")+"'";

        if (!request.getParameter("category").equals("")) {

            String category = request.getParameter("category");

            sqlQry += " AND c.category_id IN(" + category + ")";
            row += " AND c.category_id IN(" + category + ")";
        }
        if (!request.getParameter("subcategory").equals("")) {

            String subcategory = request.getParameter("subcategory");

            sqlQry += " AND sc.subcategory_id IN(" + subcategory + ")";
            row += " AND sc.subcategory_id IN(" + subcategory + ")";
        }
        
        ResultSet rs = con.selectCommand(sqlQry);
        ResultSet rsr = con.selectCommand(row);
        rsr.next();

        if (Integer.parseInt(rsr.getString("count")) > 0) {
            while (rs.next()) {
%>
 <div class="col-md-3 mb-2">
                            <div class="card-deck">
                                <div class="card border-secondary">
                                    <img src="../Assets/Files/<%=rs.getString("product_photo")%>" class="card-img-top" height="250">
                                    <div class="card-img-secondary">
                                        <h6  class="text-light bg-info text-center rounded p-1"><%=rs.getString("product_name")%></h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title text-danger">
                                            Price : <%=rs.getString("product_price")%>/-
                                        </h4>
                                        <p>
                                            Category  : <%=rs.getString("category_name")%><br>
                                            Subcategory  : <%=rs.getString("subcategory_name")%><br>
                                        </p>
                                        <%
                                            String stockSql = "select sum(stock_qty) as stock from tbl_stock where product_id = '" + rs.getString("product_id") + "'";
                                            ResultSet rsST = con.selectCommand(stockSql);
                                            rsST.next();
                                            if (rsST.getString("stock") != null) {
                                                int stock = Integer.parseInt(rsST.getString("stock"));
                                                if (stock > 0) {
                                        %>
                                        <a href="javascript:void(0)" onclick="addCart('<%=rs.getString("product_id")%>')" class="btn btn-success btn-block">Add to Cart</a>
                                        <%
                                        } else if (stock == 0) {
                                        %>
                                        <a href="javascript:void(0)" class="btn btn-danger btn-block">Out of Stock</a>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <a href="javascript:void(0)" class="btn btn-warning btn-block">Stock Not Found</a>
                                        <%
                                            }
                                        %>
                                        <a href="ViewReview.jsp?pid=<%=rs.getString("product_id")%>" class="btn btn-warning btn-block">Reviews</a>
                                    </div>
                                </div>
                            </div>
                        </div>

<%
            }
        } else {
            out.println("<h4>Products Not Found!!!!</h4>");
        }
    }

%>