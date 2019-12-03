<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
                                        <li class="active">
                                            <a href="/edit">Профиль</a>
                                        </li>
                                        <li>
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
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Персональные данные</h2>
                            <form action="/edit" method="post"name="profile" onsubmit="return validation();">
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <label for="fname">Имя</label>
                                        <input type="text" id="fname" name="firstName" class="form-control mb" value="${firstName}">
                                        <span id="check" aria-required="true"></span>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="lname">Фамилия</label>
                                        <input type="text" id="lname" name="lastName" class="form-control" value="${lastName}" >
                                        <span id="check2" aria-required="true"></span>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label for="birthDate">Дата Рождения</label>
                                        <input type="date" id="birthDate" name="birthDate" class="form-control" value="${birthDate}">
                                        <span id="checkDate" aria-required="true"></span>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label for="email">Email</label>
                                        <input type="email" id="email" name="email" class="form-control" value="${email}">
                                        <span id="checkEmail" aria-required="true"></span>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label for="phone">Телефон</label>
                                        <input class="form-control" id="phone" type="text" name="phone" value="${phone}">
                                        <span id="checkPhone" aria-required="true"></span>
                                    </div>
                                </div>

                                <div class="row form-group text-center">
                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-primary" value="Сохранить">
                                    </div>
                                </div>
                            </form>
                                <%--<div class="row form-group">--%>
                                    <%--<div class="col-md-6">--%>
                                        <%--<label for="fname">Имя</label>--%>
                                        <%--<input type="text" id="fname" name="firstName" class="form-control mb" value="${firstName}">--%>
                                    <%--</div>--%>
                                    <%--<div class="col-md-6">--%>
                                        <%--<label for="lname">Фамилия</label>--%>
                                        <%--<input type="text" id="lname" name="lastName" class="form-control" value="${lastName}" >--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <%--<div class="row form-group">--%>
                                    <%--<div class="col-md-12">--%>
                                    <%--<label for="birthDate">Дата Рождения</label>--%>
                                        <%--<input type="date" id="birthDate" name="birthDate" class="form-control" value="${birthDate}">--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <%--<div class="row form-group">--%>
                                    <%--<div class="col-md-12">--%>
                                        <%--<label for="email">Email</label>--%>
                                        <%--<input type="email" id="email" name="email" class="form-control" value="${email}">--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <%--<div class="row form-group">--%>
                                    <%--<div class="col-md-12">--%>
                                    <%--<label for="phone">Телефон</label>--%>
                                        <%--<input class="form-control" id="phone" type="text" name="phone" value="${phone}">--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <%--&lt;%&ndash;<p class="btn-big">&ndash;%&gt;--%>
                                <%--<div class="row form-group text-center">--%>
                                    <%--<div class="col-md-12">--%>
                                        <%--<input type="submit" class="btn btn-primary" value="Сохранить">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</form>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</div>
<script>
    function validation() {
        let lName = document.profile.lastName;
        let fName = document.profile.firstName;
        let date = document.profile.birthDate;
        let email = document.profile.email;
        let phone = document.profile.phone;

        if (user_name(lName, 30)) {
            if(name(fName, 30)){
                if (validDate(date)){
                    if (validEmail(email)) {
                        if (validPhone(phone, 10)){
                            return true;
                        }
                    }
                }
            }
        }
        return false;

    }
    function user_name(uName, max) {
        let len = uName.value.length;
        let letters = /^[A-Za-zА-Яа-я]+$/;
        if (len == 0) {
            document.getElementById('check2').innerHTML = 'Пожалуйста, введите данные';
            return false;
        }else if (!uName.value.match(letters)){
            document.getElementById('check2').innerHTML = 'Фамилия должна содержать только буквы';
        } else if (len > max) {
            document.getElementById('check2').innerHTML = 'Число символов не должен быть больше ' + max;
            return false;
        }
        return true;
    }

    function name(uName, min, max) {
        let len = uName.value.length;
        let letters = /^[A-Za-zА-Яа-я]+$/;
        if (len == 0) {
            document.getElementById('check').innerHTML = 'Пожалуйста, введите данные';
            return false;
        } else if (len > max) {
            document.getElementById('check').innerHTML = 'Число символов не должен быть больше ' + max;
            return false;
        } else if (!uName.value.match(letters)){
            document.getElementById('check').innerHTML = 'Имя должно содержать только буквы';
        }
        return true;
    }

    function validEmail(email) {
// let m = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        let m = /.+@.+\..+/;
        if (!email.value.match(m)) {
            document.getElementById('checkEmail').innerHTML = 'Пожалуйста, введите корректный адрес почты';
            return false;
        }
        return true;
    }

    function validDate(dateBirth) {
        var arr = dateBirth.value.split('-');
        var date = new Date();
        if ( arr[0] > (date.getFullYear() - 1) || arr[0] < 1900) {
            document.getElementById('checkDate').innerHTML = 'Неверная дата';
            return false;
        }
        return true;
    }

    function validPhone(phone, len) {
        if (phone.value.length !== len){
            document.getElementById('checkPhone').innerHTML = 'Номер телефона должен быть в формате xxx-xxx-xx-xx';
            return false;
        }
        return true;
    }
</script>
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

