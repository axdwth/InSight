<%-- 
    Document   : Login
    Created on : 17 Jan, 2024, 5:16:04 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <script type = "text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 0);
            window.onunload = function() {
                null
            };
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user registration</title>
    </head>
    <%@include file="Head.jsp" %>
    <body>
        <form enctype="multipart/form-data" method="post" action="../Assets/UploadAction/UserUploadAction.jsp"> 
        <div class="page-section mb-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                        <!-- Login Form s-->
                        <form action="#" method="post">
                            <div class="login-form">
                                <h4 class="login-title">User Registration</h4>
                                <div class="row">
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Name</label>
                                        <input class="mb-0" type="text" name="txt_name" placeholder="Your name.."required="text">
                                    </div>
                                     <div class="col-md-12 col-12 mb-20">
                                        <label>Contact</label>
                                        <input class="mb-0" type="text" name="txt_contact" placeholder="Contact details.." required name="txt_contact" pattern="[7-9]{1}[0-9]{9}"title="Phone number with 7-9 and remaing 9 digit with 0-9">
                                    </div>
                                     <div class="col-md-12 col-12 mb-20">
                                        <label>Email</label>
                                        <input class="mb-0" type="email" name="txt_email" placeholder="Enter your email.."requiredtype="email">
                                    </div>
                                     <div class="col-md-12 col-12 mb-20">
                                        <label>Address</label>
                                       <input class="mb-0" type="text" name="user_address" placeholder="Address.." required="text">
                                    </div>
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Photo</label>
                                        <input class="mb-0" type="file" name="file_photo"required="">
                                    </div>
                                                                      
                                     <div class="col-12 mb-20">
                                         
                                        <label>Select state</label>
                                       
                                        <select style="background-color:white;border:0.5px solid black"  name="sel_state" id="sel_state" onchange="getDistrict(this.value)">
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
                                    </div>
                                     <div class="col-12 mb-20">
                                        <label>District</label>
                                        <select  style="background-color:white;border:0.5px solid black" name="sel_district" id="sel_district" onchange="getPlace(this.value)">
                                    <option value="">Select District</option>

                                </select>

                                    </div>
                                     <div class="col-12 mb-20">
                                        <label>place</label>
                                     <select  style="background-color:white;border:0.5px solid black" name="sel_place" id="sel_place">
                                    <option value="">Select Place</option>
                                </select>

                                    </div>
                                    <div class="col-12 mb-20">
                                        <label>Password</label>
                                        <input class="mb-0" type="password" name="txt_password" placeholder="Password"required="">
                                    </div>
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Security Question</label>
                                        <input class="mb-0" type="text" name="txt_question" placeholder="Enter a question.."required="">
                                    </div>
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Answer</label>
                                        <input class="mb-0" type="tex" name="txt_email" placeholder="Enter your answer.."required="">
                                    </div>                   
                                    <div class="col-md-12">
                                        <button class="register-button mt-0" name="btn_submit" type="submit">Register</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                        <img src="../Assets/Template/main/images/ecommerce.png"height="420"width="510">
                    </div>
                </div>
            </div>
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
        <%@include file="Foot.jsp" %>
    <script>
        const inputField = document.getElementById('txt_password');
                inputField.addEventListener('paste', e = > e.preventDefault());
    </script>
    <%@include file="Foot.jsp" %>
</html>

