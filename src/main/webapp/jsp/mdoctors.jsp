<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MedClinic</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="../../resources/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="../../resources/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="../../resources/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="../../resources/css/magnific-popup.css">
    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="../../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../resources/css/owl.theme.default.min.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="../../resources/css/flexslider.css">
    <!-- Flaticons  -->
    <link rel="stylesheet" href="../../resources/fonts/flaticon/font/flaticon.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="../../resources/css/style.css">

    <!-- Modernizr JS -->
    <script src="../../resources/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../../resources/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>


<div class="colorlib-loader"></div>

<div id="page">
    <nav class="colorlib-nav" role="navigation">
        <div class="top-menu">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="top">
                            <div class="row">
                                <div class="col-md-6">
                                    <div id="colorlib-logo"><a href="index.jsp">Med<span>Clinic</span></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="menu-1">
                                <ul>
                                    <li><a href="/jsp/index.jsp">Домой</a></li>
                                    <li class="active"><a href="/maindoctors">Врачи</a></li>
                                    <li><a href="/jsp/aboutUs.jsp">О нас</a></li>
                                    <li><a href="/jsp/contact.jsp">Контакты</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="navbar-right">
                            <div class="menu-1">
                                <ul>
                                    <li><a href="/edit">Личный кабинет</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="colorlib-doctor">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                    <h2>Наши Врачи</h2>
                </div>
            </div>

            <div class="col-md-12 animate-box">
                <div class="row">
                    <c:forEach items="${doctors1}" var="doctor">
                        <div class="col-md-3 col-sm-6 col-xs-12 animate-box text-center">
                            <div class="doctor">
                                <div class="desc">
                                    <span><c:out value="${doctor.speciality}"></c:out></span>
                                    <h3><c:out value="${doctor.firstName}"/> <c:out
                                            value="${doctor.lastName}"/></h3>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<!-- jQuery -->
<script src="../../resources/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="../../resources/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="../../resources/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="../../resources/js/jquery.waypoints.min.js"></script>
<!-- Stellar Parallax -->
<script src="../../resources/js/jquery.stellar.min.js"></script>
<!-- Carousel -->
<script src="../../resources/js/owl.carousel.min.js"></script>
<!-- Flexslider -->
<script src="../../resources/js/jquery.flexslider-min.js"></script>
<!-- countTo -->
<script src="../../resources/js/jquery.countTo.js"></script>
<!-- Magnific Popup -->
<script src="../../resources/js/jquery.magnific-popup.min.js"></script>
<script src="../../resources/js/magnific-popup-options.js"></script>
<!-- Sticky Kit -->
<script src="../../resources/js/sticky-kit.min.js"></script>
<!-- Main -->
<script src="../../resources/js/main.js"></script>

</body>
</html>
