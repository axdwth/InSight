<%-- 
    Document   : ViewBusiness
    Created on : 12 Feb, 2024, 11:44:59 AM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Business</title>
    </head>
    <body onload="search()">
        <div align="center">
            <h1>BUSINESS</h1>
            <table border="1">
                <tr>
                    <td>SI No</td>
                    <td>Business Name</td>
                    <td align="center">BusinessAddress</td>
                    <td align="center">Business logo</td>               
                    <td colspan="2"align="center">Action</td>
                </tr>
                <%
                     String adminID = session.getAttribute("aid").toString();

                    int i = 0;
                    String selqry = "select * from tbl_buisness ";
                    ResultSet re = con.selectCommand(selqry);
                    while (re.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=re.getString("buisness_name")%></td>
                    <td><%=re.getString("buisness_address")%></td>   
                    <td>  
                    <br> <img src="../Assets/Files/<%=re.getString("buisness_logo")%>"width="100"height="100"><br></td>
                    
                    <td><a href="../Admin/Chat/Chat.jsp?bid=<%=re.getString("buisness_id")%>">Chat </a></td>

                </tr>
                <%
                    }
                %>       
            </table><br>
            </div>
    </body>
</html>
           