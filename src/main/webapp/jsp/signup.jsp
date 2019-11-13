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

    <title>SignUp</title>

    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../resources/css/signup.css" rel="stylesheet">


    <!--  &lt;!&ndash; Just for debugging purposes. Don't actually copy these 2 lines! &ndash;&gt;-->
    <!--  &lt;!&ndash;[if lt IE 9]>///<![endif]&ndash;&gt;-->
    <!--  <script src="../docs/assets/js/ie-emulation-modes-warning.js"></script>-->

    <!--  &lt;!&ndash; HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries &ndash;&gt;-->
    <!--  &lt;!&ndash;[if lt IE 9]>-->
    <!--  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <!--  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <![endif]-->
</head>

<body>

<div class="container">

    <form class="form-signin" method="post" action="/signup">
        <h2 class="form-signin-heading">Регистрация</h2>

        <label for="lastName" class="sr-only">Фамилия</label>
        <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Фамилия" required autofocus>

        <label for="firstName" class="sr-only">Имя</label>
        <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Имя" required autofocus>

        <label for="birthDate" class="sr-only">Дата рождения</label>
        <input type="date" id="birthDate" name="birthDate" class="form-control" placeholder="Дата рождения" required autofocus>

        <label for="email" class="sr-only">E-mail</label>
        <input type="email" id="email" name="email" class="form-control" placeholder="E-mail" required autofocus>

        <label for="phone" class="sr-only">Телефон</label>
        <input type="text" id="phone" name="phone" class="form-control" placeholder="Телефон" required autofocus>

        <label for="password" class="sr-only">Пароль</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Пароль" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
    </form>
</div>
</body>
</html>