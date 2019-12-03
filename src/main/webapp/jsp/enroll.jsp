<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MedClinic</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

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
                                    <div id="colorlib-logo"><a href="/jsp/index.jsp">Med<span>Clinic</span></a></div>
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
                                    <li><a href="/maindoctors">Врачи</a></li>
                                    <li><a href="/jsp/aboutUs.jsp">О нас</a></li>
                                    <li><a href="/jsp/contact.jsp">Контакты</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="navbar-right">
                            <div class="menu-1">
                                <ul><li class="active"><a href="/edit">Личный кабинет</a> </li></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div id="colorlib-contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12 animate-box">
                    <div class="row profile">
                        <div class="col-md-4">

                            <div class="profile-sidebar">

                                <div class="profile-usertitle">
                                    <div class="profile-usertitle-name">
                                        ${firstName} ${lastName}
                                    </div>
                                </div>

                                <div class="profile-usermenu">
                                    <ul class="nav">
                                        <li>
                                            <a href="/edit">Профиль</a>
                                        </li>
                                        <li class="active">
                                            <a href="/doctors">Записаться</a>
                                        </li>
                                        <li>
                                            <a href="/visit">Мои записи</a>
                                        </li>
                                        <li>
                                            <a href="/logout">Выйти</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="container col-md-8">
                            <div class="col-md-12 animate-box">
                                <div class="row">
                                    <h2>${doctor.firstName} ${doctor.lastName}</h2>
                                    <span>${doctor.speciality}</span>
                                </div>

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-2"></div>
                                    <div class="col-md-8">

                                        <h3></h3>
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th scope="col">Date</th>
                                                <th scope="col">Time</th>
                                                <th scope="col"></th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <c:forEach items="${freeEnrolls}" var="freeEnroll">
                                                <tr>
                                                    <form action="/enroll" method="post">
                                                        <input type="hidden" name="doctorId" value="${doctor.id}">
                                                        <input type="hidden" name="date" value="${freeEnroll.date}">
                                                        <td><c:out value="${freeEnroll.date}"/></td>
                                                        <td>
                                                            <select class="form-control" name="time">
                                                                <c:forEach items="${freeEnroll.times}" var="time">
                                                                    <option><c:out value="${time}"/></option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <button class="btn btn-primary" type="submit" value="date" name="enroll">Join</button>
                                                        </td>
                                                    </form>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <br>
                                        <br>
                                        <form action="/doctors" method="post">
                                            <input type="text" name="comment">
                                            <input type="hidden" value="${doctor.id}" name="doctorId">
                                            <button type="submit" name="send">Send</button>
                                        </form>
                                        <br>
                                        <c:forEach items="${comments}" var="comment">
                                            <h4><c:out value="${comment.firstName}"/></h4>
                                            <span><c:out value="${comment.text}"/></span>
                                            <small><c:out value="${comment.date}"/></small>
                                            <br>
                                        </c:forEach>


                                    </div>
                                    <div class="col-md-2"></div>
                                </div>
                            </div>
                            </div>
                        </div>
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
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="../../resources/js/google_map.js"></script>
<!-- Main -->
<script src="../../resources/js/main.js"></script>
</body>
</html>
