package servlets;

import controller.UserController;
import models.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class SignUpServlet extends HttpServlet {
    UserService userService = new UserService();
    UserController userController = new UserController();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String birthDate = request.getParameter("birthDate");

        if(!userController.registerUser(firstName, lastName, email, phone, password, birthDate, request, response)){
            request.setAttribute("regInfo", "Данный email уже занят");
            doGet(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/signup.jsp").forward(request, response);

    }
}
