/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelCustomerDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Joy
 */
public class ModelCustomerDetails {
    
    String FirstName;
          String LastName;
          String gender;
          String email;
         private String contact;
        private  String password;
          String location;
          String FullName;
          String dob;
         private String number;
    
          Connection con;
          Statement stmt;
          ResultSet rs;
          
    public ModelCustomerDetails(String FirstName, String LastName, String gender, String email,String password, String location, String FullName, String dob, String number,String contact) {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.gender = gender;
        this.email = email;
      //  this.contact = contact;
        this.password = password;
        this.location = location;
        this.FullName = FullName;
        this.dob = dob;
        this.number = number;
          this.contact = contact;
    }

    public String getFirstName() {
        return FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public String getGender() {
        return gender;
    }

    public String getEmail() {
        return email;
    }

    public String getContact() {
        return contact;
    }

    public String getPassword() {
        return password;
    }

    public String getLocation() {
        return location;
    }

    public String getFullName() {
        return FullName;
    }

    public String getDob() {
        return dob;
    }

    public String getNumber() {
        return number;
    }
    
       
    
}
