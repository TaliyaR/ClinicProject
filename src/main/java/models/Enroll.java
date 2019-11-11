package models;

import java.util.Date;

public class Enroll {
    Integer doctorId;
    Integer userId;
    Date date;
    String time;

    public Enroll(Integer doctorId, Integer userId, Date date, String time) {
        this.doctorId = doctorId;
        this.userId = userId;
        this.date = date;
        this.time = time;
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
}
