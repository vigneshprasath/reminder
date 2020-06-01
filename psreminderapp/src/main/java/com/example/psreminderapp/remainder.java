package com.example.psreminderapp;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class remainder {

	@Id
	int phone_number;	
    String username;
    String password;
    String remainder_title;
    String dob;
    String start_date;
    String end_date;
    String remainder_date;




    public remainder() {
    }

    public remainder(String username,
                   String password,
                   int phone_number,String remainder_title,String dob,String start_date,String end_date,String remainder_date)
    {
        this.username=username;
        this.password=password;
        this.phone_number=phone_number;
        this.remainder_title=remainder_title;
        this.dob=dob;
        this.start_date=start_date;
        this.end_date=end_date;
        this.remainder_date=remainder_date;
    }

    public String getremainder_title() {
        return remainder_title;
    }

    public void setremainder_title(String remainder_title) {
        this.remainder_title = remainder_title;
    }
    
    public String getstart_date() {
        return start_date;
    }

    public void setstart_date(String start_date) {
        this.start_date = start_date;
    }
    
    public String getend_date() {
        return end_date;
    }

    public void setend_date(String end_date) {
        this.end_date = end_date;
    }
    
    public String getremainder_date() {
        return remainder_date;
    }

    public void setremainder_date(String remainder_date) {
        this.remainder_date = remainder_date;
    }

    public String getdob() {
        return dob;
    }

    public void setdob(String dob) {
        this.dob = dob;
    }

    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }

    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }
    

    public int getphone_number() {
        return phone_number;
    }

    public void setphone_number(int phone_number) {
        this.phone_number = phone_number;
    }


    @Override
    public String toString() {
        return "remainder{" +
                "username=" + username +
                ", password='" + password + '\'' +
                ", phone_number=" + phone_number +
                ", dob=" + dob +
                ", start_date=" + start_date +
                ", end_date=" + end_date +
                ", remainder_date=" + remainder_date +
                ", remainder_title='" + remainder_title +
                '}';
    }
}

