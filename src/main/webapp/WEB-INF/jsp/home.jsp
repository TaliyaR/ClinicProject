<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.10.2019
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%--<%--%>
    <%--String user = null;--%>
    <%--if(session.getAttribute("user") == null){--%>
        <%--response.sendRedirect("login.jsp");--%>
    <%--}else {--%>
        <%--user = (String)session.getAttribute("user");--%>
    <%--}--%>
    <%--String userName = null;--%>
    <%--String sessionID = null;--%>
    <%--Cookie[] cookies = request.getCookies();--%>
    <%--if(cookies != null){--%>
        <%--for(Cookie cookie: cookies){--%>
            <%--if(cookie.getName().equals("login")) userName = cookie.getValue();--%>
            <%--if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();--%>
        <%--}--%>
    <%--}--%>
<%--%>--%>
Hello!
<br/>
<form action="LogoutServlet" method="post">
    <input type="submit" value="Logout" >
</form>
</body>
</html>
