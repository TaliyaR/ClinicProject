package models;

import java.util.LinkedList;

public class EnrollDate {
    String date;
    LinkedList<String> times;

    public EnrollDate(String date, LinkedList<String> times) {
        this.date = date;
        this.times = times;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public LinkedList<String> getTimes() {
        return times;
    }

    public void setTimes(LinkedList<String> times) {
        this.times = times;
    }
}
