<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 28.10.2019
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../resources/css/user.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../resources/js/ie-emulation-modes-warning.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
    <!-- Static navbar -->
    <nav class="navbar navbar-light navbar-default" style="background-color: #70c6b6">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MedClinic</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">УСЛУГИ</a></li>
                    <li><a href="#">ВРАЧИ</a></li>
                    <li><a href="#">O НАС</a></li>
                    <li><a href="#">КОНТАКТЫ</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="./">ЛИЧНЫЙ КАБИНЕТ<span class="sr-only">(current)</span></a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>

</div>


<div class="container">
    <div class="row profile">
        <div class="col-md-3">
            <div class="profile-sidebar">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img src="../../resources/img/c88b0d8b253a0fc6abad472107baa3fa.jpg" class="img-responsive" alt="">
                </div>

                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        ${firstName} ${lastName}
                    </div>
                </div>

                <div class="profile-usermenu">
                    <ul class="nav">
                        <li>
                            <a href="#">
                                <i class="glyphicon glyphicon-home"></i>
                                Профиль </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                <i class="glyphicon glyphicon-user"></i>
                                Редактирование профиля </a>
                        </li>
                        <li>
                            <a href="#" target="_blank">
                                <i class="glyphicon glyphicon-ok"></i>
                                Здоровье </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="glyphicon glyphicon-flag"></i>
                                Помощь </a>
                        </li>
                    </ul>
                </div>
                <!-- END MENU -->
            </div>
        </div>
        <div class="col-md-9">
            <div class="profile-content">

                <div class="container">
                    <!-- edit form column -->
                    <div class="col-md-9 personal-info">
                        <%--<div class="alert alert-info alert-dismissable">--%>
                            <%--<a class="panel-close close" data-dismiss="alert">×</a>--%>
                            <%--<i class="fa fa-coffee"></i>--%>
                            <%--This is an <strong>.alert</strong>. Use this to show important messages to the user.--%>
                        <%--</div>--%>
                        <h3> Персональные данные</h3>

                        <form class="form-horizontal" role="form" action="/edit" method="post">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Имя</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" name="firstName" value="${firstName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Фамилия</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" name="lastName" value="${lastName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Дата Рождения</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="date" name="birthDate" value="${birthDate}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Email:</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="email" name="email" value="${email}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Телефон</label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" name="phone" value="${phone}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">
                                    <input type="submit" class="btn btn-success" value="Сохранить">
                                    <input type="reset" class="btn btn-danger" value="Закрыть">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <hr>
        </div>
    </div>
</div>
</div>
<!--<center>-->
<!--  <strong>Powered by <a href="http://j.mp/metronictheme" target="_blank">KeenThemes</a></strong>-->
<!--</center>-->
<br>
<br>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../resources/js/jquery.min.js"><\/script>')</script>
<script src="../../resources/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>