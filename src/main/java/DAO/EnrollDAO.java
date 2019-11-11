package DAO;

import models.Enroll;
import models.EnrollDate;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Date;

public class EnrollDAO {
    Connection connection;
    {
        try {
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3307", "root", "200499");
        } catch (SQLException e) {
            System.out.println(); // TODO: 07.11.2019
            throw new IllegalArgumentException(e);
        }
    }

    public void addEnroll(Integer doctorId, Integer userId, String date, String time) {
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO project_schema.enroll (doctor_id, user_id, date, time) VALUES (?, ?, ?, ?)");
            statement.setInt(1, doctorId);
            statement.setInt(2, userId);
            statement.setString(3, date);
            statement.setString(4, time);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(); // TODO: 07.11.2019
            throw new IllegalArgumentException();
        }
    }
    public LinkedList<Enroll> getDoctorEnrolls(Integer doctorId, String date) {
        try {
            return getDoctorEnrolls0(doctorId, date);
        } catch (SQLException e) {
            System.out.println(); // TODO: 07.11.2019
            throw new IllegalArgumentException();
        }
    }


    public LinkedList<Enroll> getDoctorEnrolls0(Integer doctorId, String date) throws SQLException {
        LinkedList<Enroll> enrolls = new LinkedList<>();
        ResultSet resultSet;
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM project_schema.enroll WHERE doctor_id = ? AND date = ?");
            statement.setInt(1, doctorId);
            statement.setString(2, date);
            resultSet = statement.executeQuery();
        } catch (SQLException e) {
            System.out.println(); // TODO: 07.11.2019
            throw new IllegalArgumentException();
        }
        while (resultSet.next()) {
            enrolls.add(new Enroll(resultSet.getInt("doctor_id"), resultSet.getInt("user_id"), resultSet.getDate("date"), resultSet.getString("time")));
        }
        return enrolls;
    }

    public LinkedList<EnrollDate> getFreeEnrolls(Integer id) {
        LinkedList<String> linkedList = new LinkedList<>();
        linkedList.add("8:00");
        linkedList.add("9:00");
        linkedList.add("10:00");
        linkedList.add("11:00");
        linkedList.add("12:00");
        linkedList.add("13:00");
        linkedList.add("14:00");
        linkedList.add("15:00");
        linkedList.add("16:00");
        linkedList.add("17:00");
        linkedList.add("18:00");
        Date currentDate = new Date();
        int date1 = currentDate.getDate();
        LinkedList<String> days = new LinkedList<>();
        for (int i = 0; i < 7; i++) {
            currentDate.setDate(date1 + i);
            days.add(new SimpleDateFormat("yyyy-MM-dd").format(currentDate));
        }
        LinkedList<EnrollDate> enrollDates = new LinkedList<>();
        for (String day : days) {
            LinkedList<Enroll> enrolls1 = getDoctorEnrolls(id, day);
            LinkedList<String> freeDays = (LinkedList<String>) linkedList.clone();
            for (Enroll enroll : enrolls1) {
                freeDays.remove(enroll.getTime());
            }
            enrollDates.add(new EnrollDate(day, freeDays));
        }
        return enrollDates;
    }
}
