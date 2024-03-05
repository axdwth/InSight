<%-- 
    Document   : UserRegistration
    Created on : 25 Jan, 2024, 10:12:52 AM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>UserRegistration</title>
        </head>


        <body>
            <div align="center"> <h1>UserRegistration</h1>
                <form enctype="multipart/form-data" method="post" action="../Assets/UploadAction/UserUploadAction.jsp"> 

                    <table border='1'>
                        <tr>
                            <td>Name</td>
                            <td> <input type="text" name='username'></td>
                        </tr>
                        <tr>
                            <td>contact</td>
                            <td> <input type="text" name='usercontact'></td>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <td><input type="text" name="useremail"></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><textarea rows="4" cols="20" name="user_address" placeholder="Enter Your Adress.."></textarea>
                            </td> 
                        </tr>
                        <tr>
                            <td>Photo</td>
                            <td> <input type="file" name="file_photo"></td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td>
                                <select  name="sel_state" id="sel_state" onchange="getDistrict(this.value)">
                                    <option value="">Select State</option>
                                <%
                                    String selQryj = "select * from tbl_state";
                                    ResultSet rsj = con.selectCommand(selQryj);
                                    while (rsj.next()) {
                                %>
                                <option value="<%=rsj.getString("state_id")%>"><%=rsj.getString("state_name")%></option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td>
                            <select name="sel_district" id="sel_district" onchange="getPlace(this.value)">
                                <option value="">Select District</option>

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td>
                            <select name="sel_place" id="sel_place">
                                <option value="">Select Place</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> <input type="text" name="userpass"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Save">
                            <input type="submit" name="btn_cancel" value="Cancel">
                        </td>            
                    </tr> 
                </table>
            </form>    
        </div>

    </body>
    <script src="../Assets/JQ/jQuery.js"></script>
    <script>
                                function getDistrict(sid)
                                {
                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxDistrict.jsp?did=" + sid,
                                        success: function(html) {
                                            $("#sel_district").html(html);

                                        }
                                    });
                                }
                                function getPlace(did)
                                {
                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                        success: function(html) {
                                            $("#sel_place").html(html);

                                        }
                                    });
                                }
    </script>

</html>
