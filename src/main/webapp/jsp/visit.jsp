<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12.11.2019
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Visit</title>
</head>
<body>
<h1>Записи на прием</h1>
<div>
    <table>
        <c:forEach items="${enrollList}" var="enroll">
        <tr>
            <td><c:out value="${enroll.doctorFirstName}"/></td>
            <td><c:out value="${enroll.doctorLastName}"/></td>
            <td><c:out value="${enroll.date}"/></td>
            <td><c:out value="${enroll.time}"/></td>
        </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>

