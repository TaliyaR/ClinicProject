package servlets;

import controller.DoctorsController;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class MainDoctorsServlet extends HttpServlet {
    DoctorsController doctorsController = new DoctorsController();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("doctors1", doctorsController.getDoctorsList());
        request.getRequestDispatcher("/jsp/mdoctors.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/mdoctors.jsp").forward(request, response);

    }
}
