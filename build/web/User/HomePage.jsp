
<%-- 
    Document   : HomePage
    Created on : 27 Jan, 2024, 2:38:17 PM
    Author     : 91907
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER PAGE</title>
    </head>
    <body>
        <div align="center">
        <h1>Hello <%=session.getAttribute("uname")%>!</h1>
        <br> <a href="ViewBusiness.jsp">ViewBusiness</a><br>
         <br> <a href="Bookings.jsp">Orders</a><br>
        <br><a href="Myprofile.jsp">View Profile</a><br>
        
        <br> <a href="Complaint.jsp">Add Complaint</a><br>
          <br> <a href="Cart.jsp">View Cart</a><br>
        </div>
    </body>
</html>
