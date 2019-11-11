package models;

public class Comment {
    private Integer doctorId;
    private Integer userId;
    private String firstName;
    private String text;
    private String date;

    public Comment(Integer doctorId, Integer userId, String firstName, String text, String date) {
        this.doctorId = doctorId;
        this.userId = userId;
        this.firstName = firstName;
        this.text = text;
        this.date = date;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
}
