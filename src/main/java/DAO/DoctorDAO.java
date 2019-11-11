package DAO;

import models.Doctor;

import java.sql.*;

public class DoctorDAO {
    Connection connection;

    public DoctorDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3307", "root", "200499");
        } catch (SQLException | ClassNotFoundException e) {
            throw new IllegalArgumentException();
        }
    }

    public ResultSet getAllDoctors() {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM project_schema.doctor");
            return statement.executeQuery();

        }catch (SQLException e){
            throw new IllegalArgumentException();
        }
    }

    public ResultSet getDoctorById(int id) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM project_schema.doctor WHERE doctor_id = ?");
            statement.setInt(1, id);
            return statement.executeQuery();
        } catch (SQLException e) {
            System.out.println();
            throw new IllegalArgumentException();
        }
    }
}
