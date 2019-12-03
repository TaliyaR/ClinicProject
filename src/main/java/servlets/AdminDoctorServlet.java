package servlets;

import controller.DoctorsController;
import models.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminDoctorServlet", urlPatterns = "/add-doc")
public class AdminDoctorServlet extends HttpServlet {
    DoctorsController doctorsController = new DoctorsController();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("doctors1", doctorsController.getDoctorsList());
        request.getRequestDispatcher("/jsp/addDoctor.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String speciality = request.getParameter("speciality");
        doctorsController.add(firstName, lastName, speciality);

        response.sendRedirect("/add-doc");
    }
}
