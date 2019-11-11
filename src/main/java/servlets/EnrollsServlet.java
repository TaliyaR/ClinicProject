package servlets;

import services.EnrollService;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class EnrollsServlet extends HttpServlet {
    EnrollService enrollService = new EnrollService();
    UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        enrollService.addEnroll(Integer.parseInt(request.getParameter("doctorId")), userService.getUserIdByEmail((String) request.getSession().getAttribute("current_user")), request.getParameter("date"), request.getParameter("time"));
        response.sendRedirect("/doctors");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/jsp/enroll.jsp").forward(request, response);
    }
}
