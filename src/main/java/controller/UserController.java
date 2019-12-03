package controller;

import models.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import services.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

public class UserController {
    UserService userService;

    public UserController() {
        this.userService = new UserService();
    }

    public boolean loginUser(String email, String password, String remember, HttpServletRequest req, HttpServletResponse resp) {
        try {
            if (userService.login(email, password)) {
                if (remember != null) {
                    Cookie cookie = new Cookie("email", email);
                    cookie.setMaxAge(30 * 60);
                    resp.addCookie(cookie);
                }
                req.getSession().setAttribute("current_user", email);

                resp.sendRedirect("/edit");
                return true;
            } else {
                return false;
            }
        } catch (IOException e) {
            throw new IllegalArgumentException();
        }
    }

    public boolean registerUser(String firstName, String lastName, String email, String phone, String password, String birthDate, HttpServletRequest request, HttpServletResponse response) {
        try {
            Date date = Date.valueOf(birthDate);
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            password = encoder.encode(password);
            String role = "user";
            User newUser = new User(firstName, lastName, email, phone, password, date, role);
            if (userService.signUp(newUser)) {
                response.sendRedirect("/login");
                return true;
            } else {
                return false;
            }
        }catch (IOException e){
            throw new IllegalArgumentException();
        }
    }
}
