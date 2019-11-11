package DAO;

import models.User;

import java.sql.*;

public class UserDAO {
    Connection connection;

    public UserDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3307", "root", "200499");
        } catch (SQLException | ClassNotFoundException e) {
            throw new IllegalArgumentException();
        }

    }

    public User getUserByEmail(String email){
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM project_schema.user WHERE email = ?");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return new User(resultSet.getInt("user_id"),resultSet.getString("first_name"),
                        resultSet.getString("last_name"), resultSet.getString("email"),
                        resultSet.getString("phone"), resultSet.getString("password"),
                        resultSet.getDate("birth_date"));
            }
        }catch (SQLException e){
            throw new IllegalArgumentException();
        }
        return null;
    }

    public void save(User user){
        try {
            PreparedStatement statement = connection.prepareStatement(  "INSERT INTO project_schema.user (first_name, " +
                    "last_name, email, phone, password, birth_date) VALUES (?, ?, ?, ?, ?, ?)");
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPhone());
            statement.setString(5, user.getPassword());
            statement.setDate(6, (java.sql.Date)user.getBirthDate());

            int row = statement.executeUpdate();
            if(row == 0){
                throw new IllegalArgumentException("Can't save new user");
            }
        } catch (SQLException e) {
            throw new IllegalArgumentException();
        }
    }

    public void updateUser(Integer id, String firstName, String lastName, String email, String phone, Date birthDate){
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE project_schema.user SET first_name = ?, " +
                    "last_name = ?, email = ?, phone = ?, birth_date = ? WHERE user_id = ?");
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setDate(5, birthDate);
            statement.setInt(6, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new IllegalArgumentException();
        }

    }


}