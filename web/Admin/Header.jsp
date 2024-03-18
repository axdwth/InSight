<%@include file="SessionValidator.jsp" %>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>S.S Industry Buying</title>

<!-- <link rel="icon" href="../Assets/Template/admin/img/favicon.png" type="image/png"> -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/css/bootstrap.min.css" />
<!-- themefy CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/themefy_icon/themify-icons.css" />
<!-- swiper slider CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/swiper_slider/css/swiper.min.css" />
<!-- select2 CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/select2/css/select2.min.css" />
<!-- select2 CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/niceselect/css/nice-select.css" />
<!-- owl carousel CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/owl_carousel/css/owl.carousel.css" />
<!-- gijgo css -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/gijgo/gijgo.min.css" />
<!-- font awesome CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/font_awesome/css/all.min.css" />
<link rel="stylesheet" href="../Assets/Template/admin/vendors/tagsinput/tagsinput.css" />
<!-- datatable CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/datatable/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="../Assets/Template/admin/vendors/datatable/css/responsive.dataTables.min.css" />
<link rel="stylesheet" href="../Assets/Template/admin/vendors/datatable/css/buttons.dataTables.min.css" />
<!-- text editor css -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/text_editor/summernote-bs4.css" />
<!-- morris css -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/morris/morris.css">
<!-- metarial icon css -->
<link rel="stylesheet" href="../Assets/Template/admin/vendors/material_icon/material-icons.css" />

<!-- menu css  -->
<link rel="stylesheet" href="../Assets/Template/admin/css/metisMenu.css">
<!-- style CSS -->
<link rel="stylesheet" href="../Assets/Template/admin/css/style.css" />
<link rel="stylesheet" href="../Assets/Template/admin/css/colors/default.css" id="colorSkinCSS">


<nav class="sidebar">
    <div class="logo d-flex justify-content-between">
        <a href="HomePage.jsp"><h4 align="center">Welcome<br><%=session.getAttribute("aname")%></h4></a>
        <div class="sidebar_close_icon d-lg-none">
            <i class="ti-close"></i>
        </div>
    </div>
    <ul id="sidebar_menu">
        <li class="side_menu_title">
            <span>Dashboard</span>
        </li>
        <li class="mm-active">
            <a  href="HomePage.jsp"  aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/1.svg" alt="">
                <span>Dashboard</span>
            </a>

        </li>
        <li class="side_menu_title">
            <span>View business</span>
        </li>
        <li class="">
            <a   class="has-arrow" href="#" aria-expanded="false">
                <img src="" alt="">
                <span>Business</span>
            </a>
            <ul>
                <li><a href="ViewBusiness.jsp">View Business</a></li>
                <li><a href="BusinessRegistration.jsp">Add Business</a></li>
               
            </ul>
        </li>       
        <li class="side_menu_title">
            <span>Basic Data's</span>
        </li>
        <li class="">
            <a   class="has-arrow" href="#" aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/2.svg" alt="">
                <span>Add Location</span>
            </a>
            <ul>
                <li><a href="State.jsp">State</a></li>
                <li><a href="District.jsp">District</a></li>
                <li><a href="Place.jsp">Place</a></li>
            </ul>
        </li>
        <li class="">
            <a   class="has-arrow" href="#" aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/2.svg" alt="">
                <span>Add category</span>
            </a>
            <ul>
                <li><a href="Type.jsp">Type</a></li>
                <li><a href="Category.jsp">Category    </a></li>
                <li><a href="Subcategory.jsp">SubCategory</a></li>
            </ul>
        </li>
        <li class="side_menu_title">
            <span>Others</span>
        </li>
        <li class="">
            <a   class="has-arrow" href="ReportList.jsp" aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/2.svg" alt="">
                <span>Report</span>
            </a>
        </li>
        <li class="">
            <a   class="has-arrow" href="ViewComplaint.jsp" aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/2.svg" alt="">
                <span>Complaint</span>
            </a>
        </li>
        <li class="">
            <a   class="has-arrow" href="../logout.jsp" aria-expanded="false">
                <img src="../Assets/Template/admin/img/menu-icon/2.svg" alt="">
                <span>Logout</span>
            </a>
        </li>
    </ul>
</nav>