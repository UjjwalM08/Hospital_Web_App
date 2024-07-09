package com.entity;

public class Specialist {
    private int id;
    private String specialization;
    
    public Specialist(){
        super();
    }
    
    public Specialist(int id,String specialistName){
        super();
        this.id=id;
        this.specialization=specialistName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
}
