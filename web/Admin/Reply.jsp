<%-- 
    Document   : ViewReply
    Created on : 17 Feb, 2024, 3:18:36 PM
    Author     : 91907
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Replys</title>
    </head>
    <body>
        <form method="post">
        <% 
            if(request.getParameter("btn_sent")!=null )
            {
            String complaintid=request.getParameter("cid");
            String reply=request.getParameter("txt_reply");
            String updateqry="update tbl_complaint set complaint_reply ='" +reply + "' ,complaint_status=1 where complaint_id='" + complaintid + "'";
               con.executeCommand(updateqry);
               out.println(updateqry);
            }
            %>
        <div align=center>
        <h1>Replys!</h1>
         <table border="1">
               <td><textarea rows="4" cols="20" name="txt_reply" placeholder="Reply" ></textarea></td>
                     <td colspan="2" align="center">
                    <input type="submit" name="btn_sent" value="Sent">
                </td>
                     
            </tr>
        </table>
        </div>
        </form>
    </body>
</html>
