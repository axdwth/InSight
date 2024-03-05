<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<option value="">--select--</option>
<%
    String sel="select * from tbl_category where category_id='"+request.getParameter("cid")+"'";
    ResultSet rs=con.selectCommand(sel);
    while(rs.next())
    {
        %>
        <option value="<%=rs.getString("category_id")%>"><%=rs.getString("category_name")%></option>
        <%
    }
%>