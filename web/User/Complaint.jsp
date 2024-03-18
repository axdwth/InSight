<%-- 
    Document   : Complaint
    Created on : 25 Jan, 2024, 3:44:36 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <br> <a href="../User/HomePage.jsp"><h3>↩️Back</h3></a><br>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint</title>
    </head>
  
    <body>
        <%
            String userid = session.getAttribute("uid").toString();  
            %>
            
        <%
      
     if(request.getParameter("btn_sent")!=null )
    {
        String date= request.getParameter("txt_date");
        String title= request.getParameter("txt_ctitle");
         String content= request.getParameter("txt_content");
         String insqry= "insert into tbl_complaint(complaint_date,complaint_title,complaint_content,user_id)values('"+date+"','"+title+"','"+content+"','"+userid+"')";
   con.executeCommand(insqry);
    }
      if(request.getParameter("cid")!=null )
    {
        String id= request.getParameter("cid");
         String delqry= "delete from tbl_complaint where complaint_id="+id+"";
   con.executeCommand(delqry);
    }
    
    %>
   
          <form maethod ="post">
        <div align='center'>
        <h1>Complaint</h1>
         <table border='1'>
              
             <tr>
                    <td>Date</td>
                    <td> <input type="date"name='txt_date'></td>
                </tr>
                
                <tr>
                    <td>Title</td>
                    <td> <input type="text"name='txt_ctitle'></td>
                </tr>
                <tr>
                            <td>Content</td>
                            <td><textarea rows="4" cols="20" name="txt_content" placeholder="Enter your content" ></textarea>
                            </td> 
                        </tr>
                         <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_sent" value="submit">
                    </td>
                    </tr>
          </table>
         <br>
        <table border="1">
            <tr>
                <td>SI No</td>
                 <td>Complaint date</td>
                <td>Complaint Title</td>
                <td>Complaint content</td>
                <td align="center" colspan="4">Action</td>
            </tr>
            <%
                int i = 0;
                String selqry = "select * from tbl_complaint where user_id='"+userid+"'";
                ResultSet re = con.selectCommand(selqry);
                while (re.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=re.getString("complaint_date")%></td>
                <td><%=re.getString("complaint_title")%></td>
                <td><%=re.getString("complaint_content")%></td>
                <td><a href="Complaint.jsp?cid=<%=re.getString("Complaint_id")%>">Delete</a></td>
                     <td><a href="ViewReply.jsp?Rid=<%=re.getString("Complaint_id")%>">ViewReply</a></td>
            </tr>
            <%
                }
            %> 
        </table>
        </div>
    </body>
</html>
