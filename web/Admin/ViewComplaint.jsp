<%-- 
    Document   : ViewComplaint
    Created on : 17 Feb, 2024, 2:12:27 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewComplaint</title>
    </head>
    <body>
        <div align="center">
        <h1>Complaints</h1>
        <table border="1">
            <tr>
                <td>SI No</td>
                 <td>Complaint Title</td>
                <td>Complaint Title</td>
                <td>Complaint content</td>
                <td colspan="3" align="center">Action</td>
            </tr>
            <%
                int i = 0;
                String selqry = "select * from tbl_complaint";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("complaint_date")%></td>
                <td><%=re.getString("complaint_title")%></td>
                <td><%=re.getString("complaint_content")%></td>
                <td><a href="Reply.jsp?cid=<%=re.getString("complaint_id")%>">Reply</a></td>
            </tr>
            <%
                }
            %> 
        </table>
        </div>
    </body>
</html>
