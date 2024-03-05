<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Business</title>
        <style>
            table {
                width: 50%;
                margin: 20px auto;
                border-collapse: collapse;
                border: 1px solid #ddd;
            }

            table, th, td {
                border: 1px solid #ddd;
            }

            th, td {
                padding: 10px;
                text-align: rightt;
            }

            .dropdown-container {
                display: flex;
                justify-content: space-between;
            }

            select {
                padding: 9px;
                border: 1px solid #ddd;
                border-radius: 4px;
                margin-right: 10px;
                flex-grow: 5;
            }

            .search-button {
                padding: 10px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            .card {
                width: 200px;
                margin: 10px;
                float: left;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                overflow: hidden;
                transition: transform 0.3s;
            }

            .card:hover {
                transform: scale(1.10);
            }

            .card img {
                width: 200px;
                height: 200px;
            }

            .card-body {
                padding: 15px;
            }

            .card-title {
                font-size: 16px;
                margin-bottom: 10px;
            }

            .card-text {
                font-size: 14px;
            }

            .btn-primary {
                display: block;
                width: 100%;
                padding: 8px;
                text-align: center;
                background-color: #007bff;
                color: #fff;
                text-decoration: none;
                border-radius: 4px;
            }

            .clearfix {
                clear: both;
            }
        </style>
    </head>
    <body onload="search()">
        <div align="center">
            <h1>BUSINESS</h1>
            <br> 
            <table border="1">
                <tr>
                    <td colspan="2" class="dropdown-container">
                        <select  name="sel_state" id="sel_state" onchange="getDistrict(this.value), search()">
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


                        <select name="sel_district" id="sel_district" onchange="getPlace(this.value), search()">
                            <option value="">Select District</option>

                        </select>

                        <select name="sel_place" id="sel_place"onchange="search()">
                            <option value="">Select Place</option>
                        </select>
                        <select  name="sel_type" id="sel_type"onchange="search()">
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

            </table>
            <div id="search" align="center">

            </div>
        </div>
    </body>
</html>
<script src="../Assets/JQ/jQuery.js"></script>
<script>
                            function getDistrict(sid) {
                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxDistrict.jsp?did=" + sid,
                                    success: function(html) {
                                        $("#sel_district").html(html);
                                    }
                                });
                            }

                            function getPlace(did) {
                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                    success: function(html) {
                                        $("#sel_place").html(html);
                                    }
                                });
                            }

                            function search() {
                                var state = document.getElementById('sel_state').value;
                                var dist = document.getElementById('sel_district').value;
                                var place = document.getElementById('sel_place').value;
                                var type = document.getElementById('sel_type').value;
                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxBusinessSearch.jsp?state=" + state + "&dist=" + dist + "&place=" + place + "&type=" + type,
                                    success: function(html) {
                                        $("#search").html(html);
                                    }
                                });
                            }
</script>