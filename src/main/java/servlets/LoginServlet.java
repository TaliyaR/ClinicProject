package servlets;

import controller.UserController;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;


public class LoginServlet extends HttpServlet {
    UserController userController = new UserController();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");

        if (!userController.loginUser(email, password, remember, req, resp)) {
            req.setAttribute("info", "Неправильный пароль или email");
            doGet(req, resp);
        }

    }
}
