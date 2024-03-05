<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    String selqry = "select * from tbl_buisness b inner join tbl_type t on t.type_id=b.type_id inner join tbl_place p on p.place_id=b.place_id inner join tbl_district d on d.district_id=p.district_id inner join tbl_state s on s.state_id=d.state_id where true";
    if (request.getParameter("type") != "") {
        selqry += " and b.type_id='" + request.getParameter("type") + "'";
    }
    if (request.getParameter("place") != "") {
        selqry += " and p.place_id='" + request.getParameter("place") + "'";
    }
    if (request.getParameter("dist") != "") {
        selqry += " and d.district_id='" + request.getParameter("dist") + "'";
    }
    if (request.getParameter("state") != "") {
        selqry += " and s.state_id='" + request.getParameter("state") + "'";
    }

    ResultSet rs = con.selectCommand(selqry);
    int i = 0;

    System.out.println(selqry);
    while (rs.next()) {
        i++;
%>

<div class="card">
    <img src="../Assets/Files/<%= rs.getString("buisness_logo")%>" alt="Business Logo" width="100" height="100">
    <div class="card-body">
        <h5 class="card-title"><%= rs.getString("buisness_name")%></h5>
        <p class="card-text">
            <%= rs.getString("buisness_email")%><br>
            <%= rs.getString("buisness_address")%>
        </p>
        <a href="Viewproducts.jsp?bid=<%= rs.getString("buisness_id")%>&tid=<%= rs.getString("type_id")%>" class="btn btn-primary">View Products</a>
    </div>
</div>

<%
    if (i == 5) {
%>
<div class="clearfix"></div> <!-- Add clearfix to clear the row after every 5 cards -->
<%
            i = 0;
        }
    }
%>
