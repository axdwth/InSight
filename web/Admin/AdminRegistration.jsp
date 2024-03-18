<%-- 
    Document   : AdminRegistration
    Created on : 17 Jan, 2024, 5:15:31 PM
    Author     : 91907
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
             <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            
        </head>
    <%@include file="../Guest/Head.jsp" %>  
        <body>
         
            <%
                if (request.getParameter("btn_save") != null) {
                    String name = request.getParameter("Adminname");
                    String email = request.getParameter("Adminemail");
                    String pass = request.getParameter("Adminpassword");
                     String question = request.getParameter("text_question");
                      String answer = request.getParameter("text_answer");
                    String insqry = "insert into tbl_admin(admin_name,admin_email,admin_password,securityquest_one,answer_one)values('" + name + "','" + email + "','" + pass + "','" + question + "','" + answer + "')";
                    con.executeCommand(insqry);
                }
            %>
           
            <form method="post">
                <div class="page-section mb-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                        <!-- Login Form s-->
                        <form action="#" method="post">
                            <div class="login-form">
                                <h4 class="login-title">AdminRegistration</h4>
                                <div class="row">
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Name</label>
                                        <input class="mb-0" type="text" name="txt_name" placeholder="Your name..">
                                    </div>
                                    <div class="col-md-12 col-12 mb-20">
                                        <label>Email Address*</label>
                                        <input class="mb-0" type="email" name="txt_email" placeholder="Email Address">
                                    </div>
                                    <div class="col-12 mb-20">
                                        <label>Password</label>
                                        <input class="mb-0" type="password" name="txt_password" placeholder="Password">
                                    </div>
                                   <div class="col-md-12 col-12 mb-20">
                                        <label>Security question</label>
                                        <input class="mb-0" type="text" name="txt_question" placeholder="Add a question ">
                                    </div>
                                   <div class="col-md-12 col-12 mb-20">
                                        <label>Enter Answer*</label>
                                        <input class="mb-0" type="text" name="txt_answer" placeholder=" Add an ansswer">
                                    </div> 
                                    <div class="col-md-12">
                                        <button class="register-button mt-0" name="btn_save" type="submit">Register</button>
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
    <%@include file="../Guest/Foot.jsp" %> 
</html>
