package controller;

import services.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserController {
    UserService userService;

    public UserController() {
        this.userService = new UserService();
    }

    public void loginUser(String email, String password, String remember, HttpServletRequest req, HttpServletResponse resp) {
        try {
            if (userService.login(email, password)) {
                if (remember != null) {
                    Cookie cookie = new Cookie("email", email);
                    cookie.setMaxAge(30 * 60);
                    resp.addCookie(cookie);
                }
                req.getSession().setAttribute("current_user", email);

                resp.sendRedirect("/edit");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
