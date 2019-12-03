<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12.11.2019
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <link rel="stylesheet" href="../../resources/css/style.css">

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
                                    <li><a href="/maindoctors">Врачи</a></li>
                                    <li><a href="/jsp/aboutUs.jsp">О нас</a></li>
                                    <li><a href="/jsp/contact.jsp">Контакты</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="navbar-right">
                            <div class="menu-1">
                                <ul><li class="active"><a href="/jsp/edit.jsp">Личный кабинет</a> </li></ul>
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
                                        <li>
                                            <a href="/doctors">Записаться</a>
                                        </li>
                                        <li class="active">
                                            <a href="/visit">Мои записи</a>
                                        </li>
                                        <li>
                                            <a href="/logout">Выйти</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <h2>Записи на прием</h2>
                                <div>
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>Доктор</th>
                                            <th>День</th>
                                            <th>Время</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${enrollList}" var="enroll">
                                            <tr>
                                                <td><c:out value="${enroll.doctorFirstName}"/> <c:out value="${enroll.doctorLastName}"/></td>
                                                <td><c:out value="${enroll.date}"/></td>
                                                <td><c:out value="${enroll.time}"/></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
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

