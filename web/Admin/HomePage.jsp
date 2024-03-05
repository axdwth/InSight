<%-- 
    Document   : Homepage
    Created on : 27 Jan, 2024, 8:15:12 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PAGE</title>
    </head>
    <body>
        <div align="center">
            <h1>Hello<%=session.getAttribute("aname")%>!</h1>
        </div>
        <div align="center">
            <br><a href="ViewBusiness.jsp">ViewBusiness</a><br>
            <br><a href="Myprofile.jsp">My profile</a><br>
        <br><a href="Changepassword.jsp">Change passsword</a><br>
        <br><a href="BusinessRegistration.jsp">RegisterBusiness</a><br>
         <br><a href="Type.jsp">Add BUSINESS TYPE</a><br>
          <br><a href="Category.jsp">Add category</a><br>
          <br><a href="Subcategory.jsp">Add Subcategory</a><br>
          <br><a href="ViewComplaint.jsp">ViewComplaint</a>
        </div>
    </body>
</html>
