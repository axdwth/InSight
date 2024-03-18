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
         <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BUSINESS PAGE</title>
    </head>
    <body>
        <fieldset>
        <div align="center">
            <h1>Hello  <%=session.getAttribute("bname")%>👋</h1>
        </div>
        <div align="center">
            <a href="Bookings.jsp">ViewBooking</a><br>
            <br><a href="Product.jsp">Add products</a><br>
            <br><a href="Viewproduct.jsp">View Products</a><br>
            </fieldset><br>
            <fieldset>
                <div align='center'>
           <br><a href="Myprofile.jsp">My profile</a><br>
                    <br><a href="Chat/Chat.jsp">Chat</a><br>  
          <br> <a href="../Guest/Login.jsp">Logout◀️</a><br>
            </div>
            </fieldset>
        </div>
    </body>
</html>
