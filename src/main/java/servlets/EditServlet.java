package servlets;

import models.User;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

public class EditServlet extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User currentUser = userService.getUser((String) request.getSession().getAttribute("current_user"));
        request.setAttribute("firstName", currentUser.getFirstName());
        request.setAttribute("lastName", currentUser.getLastName());
        request.setAttribute("email", currentUser.getEmail());
        request.setAttribute("phone", currentUser.getPhone());
        request.setAttribute("birthDate", currentUser.getBirthDate());
        request.getRequestDispatcher("/jsp/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentUser = (String) request.getSession().getAttribute("current_user");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthDate = request.getParameter("birthDate");

        Integer id = userService.getUser(currentUser).getId();
        Date date = Date.valueOf(birthDate);
        User updateUser = new User(id, firstName, lastName, email, phone, date);
        userService.update(updateUser);
        response.sendRedirect("/edit");
    }
}
