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

    //    public String getPasswordByEmail(String email){
//        User user = dao.getUserByEmail(email);
//        if (user != null) {
//            return user.getPassword();
//        } else {
//            return null;
//        }
//    }

    public Integer getUserIdByEmail(String email) {
        return dao.getUserByEmail(email).getId();
    }

    public String getUserFirstNameByEmail(String email) {
        return dao.getUserByEmail(email).getFirstName();
    }

    public User getUser(String email) {
        return dao.getUserByEmail(email);
    }

    public boolean login(String email, String password) {
        User user = dao.getUserByEmail(email);
        if (encoder.matches(password, user.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    public void signUp(User user) {
        dao.save(user);
    }

    public void update(User user) {
        dao.updateUser(user.getId(), user.getFirstName(), user.getLastName(), user.getEmail(), user.getPhone(), user.getBirthDate());
    }
}
