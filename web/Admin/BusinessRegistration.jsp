<%-- 
    Document   : BranchRegistration
    Created on : 17 Jan, 2024, 5:16:19 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Buisness Register</title>
        </head>
         <%
        String id = session.getAttribute("aid").toString();      
    %>
                
        <body>
            <div align="center">
                <form enctype="multipart/form-data" method="post" action="../Assets/UploadAction/BusinessUploadAction.jsp">
                    <h1>Buisness Registration</h1>
                    <from method="post">

                        <table border='1'>
                            <tr>
                                <td>Name</td>
                                <td> <input type="text"name='bname'required type="text"></td>
                            </tr>
                            <tr>
                                <td>E-mail</td>
                                <td><input type='text'name='bemail'></td>
                            </tr>
                            <tr>
                                <td>contact</td>
                                <td><input type='text'name='bcontact'></td>
                            </tr>
                            <tr>
                                <td>Logo</td>
                                <td><input type="file" name="file_logo"></td>

                            </tr>
                            <tr>
                            <td>Address</td>
                            <td><textarea rows="4" cols="20" name="user_address" placeholder="Address" ></textarea>
                            </td> 
                        </tr>
                            <tr>
                                <td>License</td>
                                <td><input type="file" name="file_license"></td>
                            </tr>
                            <tr>
                                <td>Type</td>
                                <td>
                                    <select  name="sel_type" id="sel_type">
                                        <option value="">Select Type</option>
                                    <%
                                        String selQryj = "select * from tbl_type";
                                        ResultSet rsj = con.selectCommand(selQryj);
                                        while (rsj.next()) {
                                    %>
                                    <option value="<%=rsj.getString("type_id")%>"><%=rsj.getString("type_name")%></option>
                                    <%
                                        }
                                    %>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td>
                                <select  name="sel_state" id="sel_state" onchange="getDistrict(this.value)">
                                    <option value="">Select State</option>
                                    <%
                                        String selQry = "select * from tbl_state";
                                        ResultSet rs = con.selectCommand(selQry);
                                        while (rs.next()) {
                                    %>
                                    <option value="<%=rs.getString("state_id")%>"><%=rs.getString("state_name")%></option>
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
                            <td><input type='text'name='bpasswrd'> </td>
                        </tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="Submit">
                        </td>
                    </table>
                </from>
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
