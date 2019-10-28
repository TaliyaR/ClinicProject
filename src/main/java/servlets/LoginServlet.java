package servlets;

import services.UserService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;


public class LoginServlet extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        boolean remember = req.getParameter("remember") != null;

        if (userService.login(email, password)) {
            if (remember) {
                Cookie cookie = new Cookie("email", email);
                cookie.setMaxAge(30 * 60);
                resp.addCookie(cookie);
            }

            HttpSession session = req.getSession();
            session.setAttribute("current_user", email);

            req.getServletContext().getRequestDispatcher("/WEB-INF/jsp/home.jsp").forward(req, resp);

        } else {
            resp.sendRedirect("/WEB-INF/jsp/login.jsp");
        }

    }
}
