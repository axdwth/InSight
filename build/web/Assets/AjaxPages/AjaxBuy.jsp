
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String id = request.getParameter("id");
    String ins = "insert into tbl_booking(user_id,booking_date,booking_status,booking_amount)values('" + session.getAttribute("uid") + "',curdate(),'1','" + request.getParameter("amt") + "')";
    if (con.executeCommand(ins)) {
        String sel = "select Max(booking_id) as id from tbl_booking";
        ResultSet rs = con.selectCommand(sel);
        if (rs.next()) {
            String insQry = "insert into tbl_cart(booking_id,product_id,cart_status,cart_qty)values('" + rs.getString("id") + "','" + id + "','1','1')";
            if (con.executeCommand(insQry)) {
                session.setAttribute("bid", rs.getString("id"));
                out.println("true");
            } else {
                out.println("false");
            }
        }
    }


%>