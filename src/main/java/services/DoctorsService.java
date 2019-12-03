package services;

import DAO.DoctorDAO;
import models.Doctor;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class DoctorsService {
    DoctorDAO dao;

    public DoctorsService() {
        this.dao = new DoctorDAO();
    }

    private LinkedList<Doctor> getDoctorsList0() throws SQLException {
        ResultSet resultSet = dao.getAllDoctors();
        LinkedList<Doctor> doctors = new LinkedList<>();
        while (resultSet.next()) {
            doctors.add(new Doctor(resultSet.getLong("doctor_id"), resultSet.getString("first_name"),
                    resultSet.getString("last_name"), resultSet.getString("speciality")));
        }
        return doctors;
    }

    public LinkedList<Doctor> getDoctorsList() throws SQLException {
        return getDoctorsList0();
    }

    public Doctor getDoctorById(int id) {
        try {
            return getDoctorById0(id);
        } catch (SQLException e) {
            System.out.println();
            throw new IllegalArgumentException();
        }
    }

    private Doctor getDoctorById0(int id) throws SQLException {
        ResultSet resultSet = dao.getDoctorById(id);
        if (resultSet.next()) {
            return new Doctor(resultSet.getInt("doctor_id"), resultSet.getString("first_name"), resultSet.getString("last_name"), resultSet.getString("speciality"));
        } else {
            return null;
        }
    }

    public void add(Doctor doctor){
        dao.add(doctor);
    }
}
