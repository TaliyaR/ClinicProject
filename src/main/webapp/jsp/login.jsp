<%--
  Created by IntelliJ IDEA.
  User: Регина
  Date: 24.09.2019
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="../resources/css/login.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form action="/login" method="post" class="form-signin margin-bottom-large" name="login" onsubmit="return validation();">
        <h2 class="form-signin-heading">Вход</h2>

        <label for="email" class="sr-only">E-mail</label>
        <input type="email" id="email" name="email" class="form-control" placeholder="E-mail" required autofocus>
        <span id="checkEmail" aria-required="true"></span>

        <label for="password" class="sr-only">Пароль</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Пароль" required>
        <span id="checkPassword" aria-required="true"></span>

        <div class="checkbox">
            <label class="pull-left checkbox">
                <input type="checkbox" name="remember" value="remember-me">Запомнить меня
            </label>
        </div>
        <input value="Войти" class="btn btn-lg btn-primary btn-block" type="submit">
        <div>
            <span id="infAboutLogin" aria-required="true" style="color: red;">${info}</span>
        </div>
    </form>
    <div class="text-center">
        <a href="signup" class="login-form__sign-link font-medium">Зарегистрироваться</a>
    </div>

</div> <!-- /container -->

<script>
    function validation() {
        let email = document.login.email;
        let pass = document.login.password;

        if (validEmail(email)) {
            if (validPassword(pass, 8, 20)) {return true}
        }
        return false;
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

    function validPassword(pass, min, max) {
        let len = pass.value.length;
        if (len > max) {
            document.getElementById('checkPassword').innerHTML = 'Количество символов в строке не должно превышать ' + max;
            return false;
        } else if (len < min) {
            document.getElementById('checkPassword').innerHTML = 'Количество символов должно больше ' + (min - 1);
            return false;
        }
        return true;
    }

</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

