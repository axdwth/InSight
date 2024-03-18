<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

    <!-- index-231:32-->
    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="Assets/Template/main/images/favicon.png">
        <!-- Material Design Iconic Font-V2.2.0 -->
        <link rel="stylesheet" href="Assets/Template/main/css/material-design-iconic-font.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="Assets/Template/main/css/font-awesome.min.css">
        <!-- Font Awesome Stars-->
        <link rel="stylesheet" href="Assets/Template/main/css/fontawesome-stars.css">
        <!-- Meanmenu CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/meanmenu.css">
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/owl.carousel.min.css">
        <!-- Slick Carousel CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/slick.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/animate.css">
        <!-- Jquery-ui CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/jquery-ui.min.css">
        <!-- Venobox CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/venobox.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/nice-select.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/magnific-popup.css">
        <!-- Bootstrap V4.1.3 Fremwork CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/bootstrap.min.css">
        <!-- Helper CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/helper.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="Assets/Template/main/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="Assets/Template/main/css/responsive.css">
        <!-- Modernizr js -->
        <script src="Assets/Template/main/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="Assets/Template/main/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Begin Body Wrapper -->
        <div class="body-wrapper">
            <!-- Begin Header Area -->
            <header>

                <!-- Begin Header Middle Area -->
                <style>
                    .anta-regular {
                        font-family: "Anta", sans-serif;
                        font-weight: 400;
                        font-style: normal;
                    }



                    h1 {
                        font-family: "Anta";
                        /* Use your custom font and fallback to a generic sans-serif font */
                        color: #fed700;
                        font-size: 56px;
                        font-weight: 700;
                        text-shadow: 0px 0 #fed700, 0 0px #fed700, 0px 0 black, 0 0px black;
                        text-align: center;
                    }
                </style>
                </head>
                <h1>INSIGHT🛒
                </h1>
        </div>

    </div>
    <!-- Header Logo Area End Here -->
    <!-- Begin Header Middle Right Area -->
    <!--                            <div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
                                    
                                     Begin Header Middle Right Area 
                                    <div class="header-middle-right">
                                        <ul class="hm-menu">
                                             Begin Header Middle Wishlist Area 
                                            <li class="hm-wishlist">
                                                <a href="Assets/Template/main/wishlist.html">
                                                    <span class="cart-item-count wishlist-item-count">0</span>
                                                    <i class="fa fa-heart-o"></i>
                                                </a>
                                            </li>
                                             Header Middle Wishlist Area End Here 
                                             Begin Header Mini Cart Area 
                                            <li class="hm-minicart">
                                                <div class="hm-minicart-trigger">
                                                    <span class="item-icon"></span>
                                                    <span class="item-text">£160
                                                        <span class="cart-item-count">2</span>
                                                    </span>
                                                </div>
                                                <span></span>
                                              
                                            </li>
                                             Header Mini Cart Area End Here 
                                        </ul>
                                    </div>
                                     Header Middle Right Area End Here 
                                </div>-->
    <!-- Header Middle Right Area End Here -->
</div>
</div>
</div>
<!-- Header Middle Area End Here -->
<!-- Begin Header Bottom Area -->
<div class="header-bottom header-sticky d-none d-lg-block">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Begin Header Bottom Menu Area -->
                <div class="hb-menu hb-menu-2 d-xl-block">
                    <nav>
                        <ul>
                            <!--                            <li class="dropdown-holder"><a href="Assets/Template/main/index.html">Home</a>
                                                            <ul class="hb-dropdown">
                                                                <li><a href="Assets/Template/main/index.html">Home One</a></li>
                                                                <li class="active"><a href="Assets/Template/main/index-2.html">Home Two</a></li>
                                                            </ul>
                                                        </li>
                            -->
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="Guest/UserRegistration.jsp">Sign Up</a></li>
                            <li><a href="Guest/Login.jsp">Sign In</a></li>
                            <!-- Begin Header Bottom Menu Information Area -->
                            <!--                            
                            <li class="hb-info f-right p-0 d-sm-none d-lg-block">
                                                            <span>>🏬Become a Seller</a></span>
                                                        </li>-->
                            <!-- Header Bottom Menu Information Area End Here -->
                        </ul>
                    </nav>
                </div>
                <!-- Header Bottom Menu Area End Here -->
            </div>
        </div>
    </div>
</div>
<!-- Header Bottom Area End Here -->
<!-- Begin Mobile Menu Area -->
<div class="mobile-menu-area d-lg-none d-xl-none col-12">
    <div class="container"> 
        <div class="row">
            <div class="mobile-menu">
            </div>
        </div>
    </div>
</div>
<!-- Mobile Menu Area End Here -->
</header>
<!-- Header Area End Here -->
<!-- Begin Slider With Category Menu Area -->

<div class="slider-with-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="slider-area pt-sm-30 pt-xs-30">
                    <div class="slider-active owl-carousel">
                        <!-- Begin Single Slide Area -->

                        <div class="single-slide align-center-left animation-style-01 bg-4">
                            <div class="slider-progress"></div>
                            <div class="slider-content">
                                <h5>Sale Offer <span>-20% Off</span> This Week</h5>
                                <h2></h2>
                                <h3>Starting at <span>58990.00/-</span></h3>
                                <div class="default-btn slide-btn">
                                    <a class="links" href="Guest/Login.jsp">Shopping Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Slide Area End Here -->
                        <!-- Begin Single Slide Area -->
                        <div class="single-slide align-center-left animation-style-02 bg-5">
                            <div class="slider-progress"></div>
                            <div class="slider-content">
                                <h5>Sale Offer <span>Black Friday</span> This Week</h5>
                                <h2>Work Desk Surface Studio 2018</h2>
                                <h3>Starting at <span>$1599.00</span></h3>
                                <div class="default-btn slide-btn">
                                    <a class="links" href="Guest/Login.jsp">Shopping Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Slide Area End Here -->
                        <!-- Begin Single Slide Area -->
                        <div class="single-slide align-center-left animation-style-02 bg-6">
                            <div class="slider-progress"></div>
                            <div class="slider-content">
                                <h5>Sale Offer <span>-10% Off</span> This Week</h5>
                                <h2>Phantom 4 Pro+ Obsidian</h2>
                                <h3>Starting at <span>$809.00</span></h3>
                                <div class="default-btn slide-btn">
                                    <a class="links" href="Guest/Login.jsp ">Shopping Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Slide Area End Here -->
                    </div>
                </div>
            </div>
            <!-- Slider Area End Here -->
        </div>
    </div>
</div>



<section class="product-area li-trending-product li-trending-product-2 pt-60 pb-45">
    <div class="container">
        <div class="row">
            <!-- Begin Li's Tab Menu Area -->
            <div class="col-lg-12">
                <div class="li-product-tab li-trending-product-tab">
                    <h2>
                        <span>Trending Products</span>
                    </h2>
                    <!--                                <ul class="nav li-product-menu li-trending-product-menu">
                                                        <li><a class="active" data-toggle="tab" href="#home1"><span>Meito</span></a></li>
                                                        <li><a data-toggle="tab" href="#home2"><span>Camera Accessories</span></a></li>
                                                        <li><a data-toggle="tab" href="#home3"><span>XailStation</span></a></li>
                                                    </ul>               -->
                </div>
                <!-- Begin Li's Tab Menu Content Area -->
                <div class="tab-content li-tab-content li-trending-product-content">
                    <div id="home1" class="tab-pane show fade in active">
                        <div class="row">
                            <div class="product-active owl-carousel">

                                <%

                                    String sel = "select * from tbl_product";
                                    ResultSet rs = con.selectCommand(sel);
                                    while (rs.next()) {
                                %>
                                <!-- single-product-wrap start -->
                                <div class="col-lg-12">
                                    <div class="single-product-wrap">
                                        <div class="product-image">
                                            <a href="">
                                                <img width="200" height="150" src="Assets/Files/<%=rs.getString("product_photo")%>" alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href=""><%=rs.getString("product_name")%></a>
                                                    </h5>
                                                    <%
                                                        int count = 0;
                                                        int sum = 0;
                                                        int avg = 0;
                                                        String sel1 = "select sum(user_rating) as rSum,count(user_rating) as rCount from tbl_review where product_id='" + rs.getString("product_id") + "'";
                                                        ResultSet rs1 = con.selectCommand(sel1);
                                                        if (rs1.next()) {
                                                            count = rs1.getInt("rCount");
                                                            sum = rs1.getInt("rSum");
                                                            if (sum != 0 && count != 0) {
                                                                avg = sum / count;
                                                            }
                                                        }
                                                    %>
                                                    <div class="rating-box">
                                                        <ul class="rating">
                                                            <%
                                                                for (int i = 1; i <= 5; i++) {
                                                                    if (i <= avg) {
                                                                        out.println("<li><i class='fa fa-star-o'></i></li>");
                                                                    } else {
                                                                        out.println("<li class='no-star'><i class='fa fa-star-o'></i></li>");
                                                                    }

                                                                }
                                                            %>


                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">₹<%=rs.getString("product_price")%></span>
                                                </div>
                                                <h4><a class="product_name" href=""><%=rs.getString("product_details")%></a></h4>

                                            </div>
                                            <div class="add-actions">
                                                <ul class="add-actions-link">
                                                    <li class="add-cart active"><a href="Guest/Login.jsp">Add to cart</a></li>
                                                    <li><a class="links-details" href="Guest/Login.jsp"><i class="fa fa-heart-o"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-product-wrap end -->
                                <%
                                    }

                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Tab Menu Content Area End Here -->
            </div>
            <!-- Tab Menu Area End Here -->
        </div>
    </div>
</section>


<!-- Begin Footer Area -->
<div class="footer">
    <!-- Footer Static Top Area End Here -->
    <!-- Begin Footer Static Middle Area -->
    <div class="footer-static-middle">
        <div class="container">
            <div class="footer-logo-wrap pt-50 pb-35">
                <div class="row">
                    <!-- Begin Footer Logo Area -->
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-logo">
                            <img src="Assets/Template/main/images/menu/logo/3.png" width="100" height="50" alt="Footer Logo">
                            <p class="info">

                            </p>
                        </div>
                        <ul class="des">
                            <li>
                                <span>Address: </span><br>
                                6688Princess Road, London, Greater London BAS 23JK, UK
                            </li>
                            <li>
                                <span>Phone: </span>
                                <a href="Assets/Template/main/#">(+123) 123 321 345</a>
                            </li>
                            <li>
                                <span>Email: </span>
                                <a href="Assets/Template/main/mailto://info@yourdomain.com">info@yourdomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Footer Logo Area End Here -->
                    <!-- Begin Footer Block Area -->
                    <div class="col-lg-2 col-md-3 col-sm-6">
                        <div class="footer-block">
                            <h3 class="footer-block-title">Product</h3>
                            <ul>

                                <li><a href="../User/Viewproducts.jsp">New products</a></li>
                                <li><a href="Assets/Template/main/#">Best sales</a></li>
                                <li><a href="Assets/Template/main/#">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Footer Block Area End Here -->
                    <!-- Begin Footer Block Area -->
                    <div class="col-lg-2 col-md-3 col-sm-6">
                        <div class="footer-block">
                            <h3 class="footer-block-title">Our company</h3>
                            <ul>
                                <li><a href="Assets/Template/main/#">Delivery</a></li>
                                <li><a href="Assets/Template/main/#">Legal Notice</a></li>
                                <li><a href="Assets/Template/main/#">About us</a></li>
                                <li><a href="Assets/Template/main/#">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Footer Block Area End Here -->
                    <!-- Begin Footer Block Area -->
                    <div class="col-lg-4">
                        <div class="footer-block">
                            <h3 class="footer-block-title">Follow Us</h3>
                            <ul class="social-link">
                                <li class="twitter">
                                    <a href="Assets/Template/main/https://twitter.com/" data-toggle="tooltip" target="_blank" title="Twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="rss">
                                    <a href="Assets/Template/main/https://rss.com/" data-toggle="tooltip" target="_blank" title="RSS">
                                        <i class="fa fa-rss"></i>
                                    </a>
                                </li>
                                <li class="google-plus">
                                    <a href="Assets/Template/main/https://www.plus.google.com/discover" data-toggle="tooltip" target="_blank" title="Google +">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                                <li class="facebook">
                                    <a href="Assets/Template/main/https://www.facebook.com/" data-toggle="tooltip" target="_blank" title="Facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li class="youtube">
                                    <a href="Assets/Template/main/https://www.youtube.com/" data-toggle="tooltip" target="_blank" title="Youtube">
                                        <i class="fa fa-youtube"></i>
                                    </a>
                                </li>
                                <li class="instagram">
                                    <a href="Assets/Template/main/https://www.instagram.com/" data-toggle="tooltip" target="_blank" title="Instagram">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- Begin Footer Newsletter Area -->

                        <!-- Footer Newsletter Area End Here -->
                    </div>
                    <!-- Footer Block Area End Here -->
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Static Middle Area End Here -->

    <!-- Footer Static Bottom Area End Here -->
</div>
<!-- Footer Area End Here -->

</div>
<!-- Body Wrapper End Here -->
<!-- jQuery-V1.12.4 -->
<script src="Assets/Template/main/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper js -->
<script src="Assets/Template/main/js/vendor/popper.min.js"></script>
<!-- Bootstrap V4.1.3 Fremwork js -->
<script src="Assets/Template/main/js/bootstrap.min.js"></script>
<!-- Ajax Mail js -->
<script src="Assets/Template/main/js/ajax-mail.js"></script>
<!-- Meanmenu js -->
<script src="Assets/Template/main/js/jquery.meanmenu.min.js"></script>
<!-- Wow.min js -->
<script src="Assets/Template/main/js/wow.min.js"></script>
<!-- Slick Carousel js -->
<script src="Assets/Template/main/js/slick.min.js"></script>
<!-- Owl Carousel-2 js -->
<script src="Assets/Template/main/js/owl.carousel.min.js"></script>
<!-- Magnific popup js -->
<script src="Assets/Template/main/js/jquery.magnific-popup.min.js"></script>
<!-- Isotope js -->
<script src="Assets/Template/main/js/isotope.pkgd.min.js"></script>
<!-- Imagesloaded js -->
<script src="Assets/Template/main/js/imagesloaded.pkgd.min.js"></script>
<!-- Mixitup js -->
<script src="Assets/Template/main/js/jquery.mixitup.min.js"></script>
<!-- Countdown -->
<script src="Assets/Template/main/js/jquery.countdown.min.js"></script>
<!-- Counterup -->
<script src="Assets/Template/main/js/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script src="Assets/Template/main/js/waypoints.min.js"></script>
<!-- Barrating -->
<script src="Assets/Template/main/js/jquery.barrating.min.js"></script>
<!-- Jquery-ui -->
<script src="Assets/Template/main/js/jquery-ui.min.js"></script>
<!-- Venobox -->
<script src="Assets/Template/main/js/venobox.min.js"></script>
<!-- Nice Select js -->
<script src="Assets/Template/main/js/jquery.nice-select.min.js"></script>
<!-- ScrollUp js -->
<script src="Assets/Template/main/js/scrollUp.min.js"></script>
<!-- Main/Activator js -->
<script src="Assets/Template/main/js/main.js"></script>
</body>

<!-- index-231:38-->

</html>
