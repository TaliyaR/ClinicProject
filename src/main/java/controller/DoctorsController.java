package controller;

import models.Doctor;
import services.DoctorsService;

import java.sql.SQLException;
import java.util.LinkedList;

public class DoctorsController {
    DoctorsService doctorsService = new DoctorsService();

    public LinkedList<Doctor> getDoctorsList(){
        LinkedList<Doctor> doctorList = null;
        try {
            doctorList = doctorsService.getDoctorsList();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return doctorList;
    }
}
