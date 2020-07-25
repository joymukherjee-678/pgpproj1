/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.distributerInfo;

/**
 *
 * @author Joy
 */
public class ModelDistributerDetails {
    
    private String firstName,lastName,gender,email,contact,aadharNumber,password,panNumber,fullName,distributerLocation, adminEmail;
    

    public ModelDistributerDetails(String firstName, String lastName, String gender, String email, String contact, String aadharNumber, String password, String panNumber, String fullName, String distributerLocation, String adminEmail) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.email = email;
        this.contact = contact;
        this.aadharNumber = aadharNumber;
        this.password = password;
        this.panNumber = panNumber;
        this.fullName = fullName;
        this.distributerLocation = distributerLocation;
        this.adminEmail = adminEmail;
        
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
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

    public String getAadharNumber() {
        return aadharNumber;
    }

    public String getPassword() {
        return password;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public String getFullName() {
        return fullName;
    }

    public String getDistributerLocation() {
        return distributerLocation;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    /**
     * @return the issueDate
     */
    
    
    
    
}

