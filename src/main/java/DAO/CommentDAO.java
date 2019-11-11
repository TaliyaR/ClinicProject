package DAO;

import models.Comment;

import java.sql.*;

public class CommentDAO {
    Connection connection;

    public CommentDAO(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3307", "root", "200499");
        } catch (SQLException | ClassNotFoundException e) {
            throw new IllegalArgumentException();
        }
    }

    public void saveComment(Comment comment){
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO project_schema.comment (doctor_id, user_id, text, date, first_name) VALUES (?, ?, ?, ?, ?)");
            statement.setInt(1, comment.getDoctorId());
            statement.setInt(2,comment.getUserId());
            statement.setString(3, comment.getText());
            statement.setString(4, comment.getDate());
            statement.setString(5, comment.getFirstName());
            statement.executeUpdate();


        } catch (SQLException e) {
            throw new IllegalArgumentException();
        }

    }

    public ResultSet getComments(Integer doctorId) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM project_schema.comment WHERE doctor_id = ?");
            statement.setInt(1, doctorId);
            return statement.executeQuery();

        }catch (SQLException e){
            throw new IllegalArgumentException();
        }
    }
}
