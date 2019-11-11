<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-grid.css" rel="stylesheet">
    <link href="css/bootstrap-reboot.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aldrich">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="css/Features-Clean.css">
    <link rel="stylesheet" href="css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="css/Projects-Horizontal.css">
    <link rel="stylesheet" href="css/Simple-Slider.css">
    <link rel="stylesheet" href="css/styles.css">
    <title>${doctor.firstName} ${doctor.lastName}</title>
</head>
<body>
${doctor.firstName}
${doctor.lastName}
${doctor.speciality}
<div class="header">

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
</body>
</html>
