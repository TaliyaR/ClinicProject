package services;

import DAO.CommentDAO;
import models.Comment;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class CommentService {
    CommentDAO commentDAO;

    public CommentService(){
        this.commentDAO = new CommentDAO();
    }

    public void saveComment(Integer userId, Integer doctorId, String firstName, String text, String date){
        Comment comment = new Comment(doctorId, userId, firstName, text, date);
        commentDAO.saveComment(comment);
    }

    public LinkedList<Comment> getComments(Integer doctorId) {
        try {
            return getComments0(doctorId);
        } catch (SQLException e) {
            System.out.println(); // TODO: 11.11.2019
            throw new IllegalArgumentException();
        }
    }

    public LinkedList<Comment> getComments0(Integer doctorId) throws SQLException {
        ResultSet resultSet = commentDAO.getComments(doctorId);
        LinkedList<Comment> comments = new LinkedList<>();
        while (resultSet.next()) {
            comments.add(new Comment(resultSet.getInt("doctor_id"), resultSet.getInt("user_id"), resultSet.getString("first_name"), resultSet.getString("text"), resultSet.getString("date")));
        }
        return comments;
    }
}
