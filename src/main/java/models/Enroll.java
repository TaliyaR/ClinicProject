package models;

import java.util.Date;

public class Enroll {
    Integer doctorId;
    String doctorLastName;
    String doctorFirstName;
    Integer userId;
    Date date;
    String time;

    public Enroll(String doctorLastName, String doctorFirstName, Date date, String time) {
        this.doctorLastName = doctorLastName;
        this.doctorFirstName = doctorFirstName;
        this.date = date;
        this.time = time;
    }

    public Enroll(Integer doctorId, Integer userId, Date date, String time) {
        this.doctorId = doctorId;
        this.userId = userId;
        this.date = date;
        this.time = time;
    }

    public String getDoctorLastName() {
        return doctorLastName;
    }

    public void setDoctorLastName(String doctorLastName) {
        this.doctorLastName = doctorLastName;
    }

    public String getDoctorFirstName() {
        return doctorFirstName;
    }

    public void setDoctorFirstName(String doctorFirstName) {
        this.doctorFirstName = doctorFirstName;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Enroll{" +
                "doctorId=" + doctorId +
                ", userId=" + userId +
                ", date=" + date +
                ", time='" + time + '\'' +
                '}';
    }
}
