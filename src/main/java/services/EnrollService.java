package services;

import DAO.EnrollDAO;
import models.EnrollDate;

import java.sql.*;
import java.util.LinkedList;

public class EnrollService {
    EnrollDAO dao;

    public EnrollService(){
        this.dao = new EnrollDAO();
    }

    public void addEnroll(Integer doctorId, Integer userId, String date, String time){
        dao.addEnroll(doctorId, userId, date, time);
    }

    public LinkedList<EnrollDate> getFreeEnrolls(Integer id) {
        return dao.getFreeEnrolls(id);
    }
}
