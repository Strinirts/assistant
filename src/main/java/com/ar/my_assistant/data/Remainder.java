package com.ar.my_assistant.data;

public class Remainder {
    int id;
    int userId;
    String what, happensOn, place, status, desription;
    
    public void setId(int id) {
        this.id = id;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getDesription() {
        return desription;
    }
    public void setDesription(String desription) {
        this.desription = desription;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public void setWhat(String what) {
        this.what = what;
    }
    public void setHappensOn(String happensOn) {
        this.happensOn = happensOn;
    }
    public void setPlace(String place) {
        this.place = place;
    }
    public int getId() {
        return id;
    }
    public int getUserId() {
        return userId;
    }
    public String getWhat() {
        return what;
    }
    public String getHappensOn() {
        return happensOn;
    }
    public String getPlace() {
        return place;
    } 

    
}
