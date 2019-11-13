package servlets;

import models.Doctor;
import models.Enroll;
import services.DoctorsService;
import services.EnrollService;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;

public class VisitServlet extends HttpServlet {
    EnrollService enrollService = new EnrollService();
    UserService userService = new UserService();
    DoctorsService doctorsService = new DoctorsService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LinkedList<Enroll> newEnrollList = new LinkedList<>();
        LinkedList<Enroll> enrollList = enrollService.getUsersEnroll(userService.getUserIdByEmail((String) request.getSession().getAttribute("current_user")));
        for (Enroll enroll : enrollList) {
            Doctor doc = doctorsService.getDoctorById(enroll.getDoctorId());
            Enroll newEnroll = new Enroll(doc.getLastName(), doc.getFirstName(), enroll.getDate(), enroll.getTime());
            newEnrollList.add(newEnroll);
        }
        request.setAttribute("enrollList", newEnrollList);
        request.getRequestDispatcher("/jsp/visit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/visit.jsp").forward(request, response);

    }
}
