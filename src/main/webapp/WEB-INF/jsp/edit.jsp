<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 28.10.2019
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<form method="post" action="/edit">
    <input type="text" name="firstName" placeholder="First Name">
    <input type="text" name="lastName" placeholder="Last Name">
    <input type="date" name="birthDate">
    <input type="email" name="email" placeholder="Email">
    <input type="text" name="phone" placeholder="Phone">
    <input type="radio" name="sex" value="1"> Male <input type="radio" name="sex" value="0"> Female<br>
    <input type="submit" value="Save">
</form>
</body>
</html>
