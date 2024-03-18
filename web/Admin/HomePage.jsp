<%-- 
    Document   : HomePage
    Created on : May 5, 2021, 2:13:50 PM
    Author     : Pro-TECH
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        
        <%@include file="Header.jsp" %>
    </head>

    <body>
        <section class="main_content dashboard_part">
            <!-- menu  -->

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="single_element">
                                <div class="quick_activity">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="quick_activity_wrap">
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/Template/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%                                                                String csel = "select count(*) as c from tbl_buisness ";
                                                                    ResultSet cc = con.selectCommand(csel);
                                                                    if (cc.next()) {
                                                                        out.println(cc.getString("c"));
                                                                    }
                                                                %>
                                                            </span> </h3>
                                                        <p>Seller</p>
                                                    </div>
                                                </div>
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/Template/admin/img/icon/Student.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter"> 
                                                                <%
                                                                    String ssel = "select count(*) as c from tbl_user";
                                                                    ResultSet sc = con.selectCommand(ssel);
                                                                    if (sc.next()) {
                                                                        out.println(sc.getString("c"));
                                                                    }
                                                                %>
                                                            </span> </h3>
                                                        <p>Customer</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="white_box card_height_100">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Seller's</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQry = "select * from tbl_buisness c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crs = con.selectCommand(cQry);
                                        while (crs.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crs.getString("buisness_logo")%>" alt="">
                                        </div>
                                        <h4><%=crs.getString("buisness_name")%></h4>
                                        <p><%=crs.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <div class="white_box card_height_100">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Customer's</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String sQry = "select * from tbl_user u inner join tbl_place p on p.place_id=u.place_id ORDER BY RAND()";
                                        ResultSet srs = con.selectCommand(sQry);
                                        while (srs.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=srs.getString("user_photo")%>" alt="">
                                        </div>
                                        <h4><%=srs.getString("user_name")%></h4>
                                        <p><%=srs.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </section>
    </body>
    <%@include file="Footer.jsp" %>
</html>
