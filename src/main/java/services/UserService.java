package services;

import DAO.UserDAO;
import models.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class UserService {
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    UserDAO dao;

    public UserService() {
        this.dao = new UserDAO();
    }


    public Integer getUserIdByEmail(String email) {
        return dao.getUserByEmail(email).getId();
    }

    public String getUserFirstNameByEmail(String email) {
        return dao.getUserByEmail(email).getFirstName();
    }

    public String getRoleByEmail(String email) {
        return dao.getUserByEmail(email).getRole();
    }

    public User getUser(String email) {
        return dao.getUserByEmail(email);
    }

    public boolean login(String email, String password) {
        User user = dao.getUserByEmail(email);
        if(user != null) {
            if (encoder.matches(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }else return false;
    }

    public boolean signUp(User user) {
        User regUser = dao.getUserByEmail(user.getEmail());
        if(regUser != null) {
            return false;
        }else {
            dao.save(user);
            return true;
        }
    }

    public void update(User user) {
        dao.updateUser(user.getId(), user.getFirstName(), user.getLastName(), user.getEmail(), user.getPhone(), user.getBirthDate());
    }
}
