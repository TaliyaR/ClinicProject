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

    <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="../resources/css/signup.css" rel="stylesheet">

</head>

<body>

<div class="container">

    <form class="form-signin" method="post" action="/signup" name='registration' onsubmit="return validation();" >
        <h2 class="form-signin-heading">Регистрация</h2>

        <label for="lastName" class="sr-only">Фамилия</label>
        <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Фамилия" required autofocus>
        <span id="check" aria-required="true"></span>

        <label for="firstName" class="sr-only">Имя</label>
        <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Имя" required autofocus>
        <span id="check2" aria-required="true"></span>

        <label for="birthDate" class="sr-only">Дата рождения</label>
        <input type="date" id="birthDate" name="birthDate" class="form-control" placeholder="Дата рождения" required autofocus>
        <span id="checkDate" aria-required="true"></span>

        <label for="email" class="sr-only">E-mail</label>
        <input type="email" id="email" name="email" class="form-control" placeholder="E-mail" required autofocus>
        <span id="checkEmail" aria-required="true"></span>

        <label for="phone" class="sr-only">Телефон</label>
        <input type="text" id="phone" name="phone" class="form-control" placeholder="Телефон" required autofocus>
        <span id="checkPhone" aria-required="true"></span>

        <label for="password" class="sr-only">Пароль</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Пароль" required>
        <span id="checkPassword" aria-required="true"></span>

        <label for="password2" class="sr-only">Пароль</label>
        <input type="password" id="password2" name="password2" class="form-control" placeholder="Пароль" required>
        <span id="checkPasswordRepeat" aria-required="true"></span>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
        <div>
            <span id="infAboutSignUp" aria-required="true">${regInfo}</span>
        </div>
    </form>
</div>
<script>
    function validation() {

        let lName = document.registration.lastName;
        let fName = document.registration.firstName;
        let date = document.registration.birthDate;
        let email = document.registration.email;
        let phone = document.registration.phone;
        let pass = document.registration.password;
        let pass2 = document.registration.password2;

        if (user_name(lName, 30)) {
            if(name(fName, 30)){
                if (validDate(date)){
                    if (validEmail(email)) {
                        if (validPhone(phone, 10)){
                            if (validPassword(pass, 8, 20)) {
                                if (validPassword2(pass, pass2)) {
                                    return true;
                                }
                            }
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
            document.getElementById('check').innerHTML = 'Пожалуйста, введите данные';
            return false;
        }else if (!uName.value.match(letters)){
            document.getElementById('check').innerHTML = 'Фамилия должна содержать только буквы';
        } else if (len > max) {
            document.getElementById('check').innerHTML = 'Число символов не должен быть больше ' + max;
            return false;
        }
        return true;
    }

    function name(uName, min, max) {
        let len = uName.value.length;
        let letters = /^[A-Za-zА-Яа-я]+$/;
        if (len == 0) {
            document.getElementById('check2').innerHTML = 'Пожалуйста, введите данные';
            return false;
        } else if (len > max) {
            document.getElementById('check2').innerHTML = 'Число символов не должен быть больше ' + max;
            return false;
        } else if (!uName.value.match(letters)){
            document.getElementById('check2').innerHTML = 'Имя должно содержать только буквы';
        }
        return true;
    }

    function validEmail(email) {
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

    function validPassword2(pass, pass2) {
        if (pass.value !== pass2.value){
            document.getElementById('checkPasswordRepeat').innerHTML = 'Пароли не совпадают';
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
</body>
</html>