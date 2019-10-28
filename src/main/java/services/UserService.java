package services;

import DAO.UserDAO;
import models.User;

public class UserService {
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

    public boolean login(String email, String password) {
        User user = dao.getUserByEmail(email);
        String p;
        if ((p = user.getPassword()) != null) {
            if (p.equals(password)) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public void signUp(User user){
        dao.save(user);
    }
}
