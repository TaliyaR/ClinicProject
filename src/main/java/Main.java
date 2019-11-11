import DAO.EnrollDAO;
import models.Doctor;
import services.DoctorsService;

import java.sql.SQLException;
import java.util.LinkedList;

public class Main {
    public static void main(String[] args) throws SQLException {
        DoctorsService service = new DoctorsService();
        LinkedList<Doctor> list = service.getDoctorsList();
        for (Doctor doctor : list) {
            System.out.println(doctor);

        }
    }
}
