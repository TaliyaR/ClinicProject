import DAO.EnrollDAO;
import models.Doctor;
import models.Enroll;
import services.DoctorsService;
import services.EnrollService;
import services.UserService;

import java.sql.SQLException;
import java.util.LinkedList;

public class Main {
    public static void main(String[] args) throws SQLException {
        UserService userService = new UserService();
        EnrollService enrollService = new EnrollService();

        LinkedList<Enroll> linkedList = enrollService.getUsersEnroll(8);
        for (Enroll enroll : linkedList) {
            System.out.println(enroll.toString());

        }
    }
}
