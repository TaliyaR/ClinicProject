package servlets;

import models.Doctor;
import services.CommentService;
import services.DoctorsService;
import services.EnrollService;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

//@WebServlet(name = "DoctorsServlet", urlPatterns = "/doctors")
public class DoctorsServlet extends HttpServlet {
    DoctorsService service = new DoctorsService();
    EnrollService enrollService = new EnrollService();
    CommentService commentService = new CommentService();
    UserService userService = new UserService();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("send") != null) {
            commentService.saveComment(userService.getUserIdByEmail((String) request.getSession().getAttribute("current_user")), Integer.parseInt(request.getParameter("doctorId")), userService.getUserFirstNameByEmail((String) request.getSession().getAttribute("current_user")), request.getParameter("comment"), new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        }
        Doctor doctor = service.getDoctorById(Integer.parseInt(request.getParameter("doctorId")));
        request.setAttribute("doctor", doctor);
        request.setAttribute("freeEnrolls", enrollService.getFreeEnrolls(Integer.parseInt(request.getParameter("doctorId"))));
        request.setAttribute("comments", commentService.getComments(Integer.parseInt(request.getParameter("doctorId"))));


        request.getRequestDispatcher("/jsp/enroll.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LinkedList<Doctor> doctorList = null;
        try {
            doctorList = service.getDoctorsList();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("doctors", doctorList);
        request.getRequestDispatcher("/jsp/doctors.jsp").forward(request, response);

    }
}
