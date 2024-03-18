<%-- 
    Document   : Product
    Created on : 25 Jan, 2024, 3:24:47 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
              <a href="../Business/HomePage.jsp"><h3>↩️Back</h3></a>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>ADDPRODUCTS</title>
        </head>
        <body>
            <div align='center'>
                <form enctype="multipart/form-data" method="post" action="../Assets/UploadAction/ProductUploadAction.jsp">
                    <h1>ADD PRODUCTS</h1>
                    <table border='1'>
                        <tr>
                            <td>Name</td>
                            <td> <input type="text"name='productname'required type="text"></td>
                        </tr>
                        <tr>
                            <td>Details</td>
                            <td><textarea rows="4" cols="20" name="productdetails" required type="text"></textarea></td>
                        </tr>
                        <tr>
                            <td>Photo</td>
                            <td> <input type="file"name='file_photo'required type="file"></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td> <input type="text"name='productprice'></td>
                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>
                                <select name="sel_cat" id="sel_cat">
                                    <option value="">--select--</option>
                                <%
                                    String selQry = "select * from tbl_category where type_id='"+session.getAttribute("tid")+"'";
                                    ResultSet rs = con.selectCommand(selQry);
                                    while (rs.next()) {
                                %>
                                <option value="<%=rs.getString("category_id")%>"><%=rs.getString("category_name")%></option>
                                <%
                                    }
                                %> 
                            </select>
                        </td>          
                    </tr>
                    <tr>
                        <td>Subcategory</td>
                        <td>
                            <select name="sel_scat" id="sel_scat">
                                <option value="">--select--</option>
                                <%
                                    String selQry1 = "select * from tbl_subcategory";
                                    ResultSet re = con.selectCommand(selQry1);
                                    while (re.next()) {
                                %>
                                <option value="<%=re.getString("subcategory_id")%>"><%=re.getString("subcategory_name")%></option>
                                <%
                                    }
                                %> 
                            </select>
                        </td>          
                    </tr>  
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btn_save" value="save">
                        </td>                       
                    </tr>
                </table>
                           
                </body>
            </form>
        </div>
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
