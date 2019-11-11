<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 07.11.2019
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <c:forEach items="${doctors}" var="doctor">
            <tr>
                <td><c:out value="${doctor.firstName}"/></td>
                <td><c:out value="${doctor.lastName}"/></td>
                <td><c:out value="${doctor.speciality}"/></td>
                <td>
                    <form action="/doctors" method="post">
                        <button type="submit" name="doctorId" value="${doctor.id}">${doctor.firstName}</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
