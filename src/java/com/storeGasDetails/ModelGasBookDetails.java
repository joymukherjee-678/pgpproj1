/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.storeGasDetails;

/**
 *
 * @author Joy
 */
public class ModelGasBookDetails {
              
      private String contact, distributerContact;
      private String aadhaarNumber;
      private String distributerLocation;
      private String gasName;
      private String customerID;
      private String registerDate;
      private String gasBookNo;
      private String status;

    public ModelGasBookDetails(String contact, String aadhaarNumber,String distributerLocation, String gasName, String customerID, String registerDate, String gasBookNo, String status, String distributerContact) {
        this.contact = contact;
        this.aadhaarNumber = aadhaarNumber;
        this.distributerLocation=distributerLocation;
        this.gasName = gasName;
        this.customerID = customerID;
        this.registerDate = registerDate;
        this.gasBookNo = gasBookNo;
        this.status = status;
        this.distributerContact = distributerContact;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @return the aadhaarNumber
     */
    public String getAadhaarNumber() {
        return aadhaarNumber;
    }

    /**
     * @return the distributerLocation
     */
    public String getDistributerLocation() {
        return distributerLocation;
    }

    /**
     * @return the gasName
     */
    public String getGasName() {
        return gasName;
    }

    /**
     * @return the customerID
     */
    public String getCustomerID() {
        return customerID;
    }

    /**
     * @return the registerDate
     */
    public String getRegisterDate() {
        return registerDate;
    }

    /**
     * @return the gasBookNo
     */
    public String getGasBookNo() {
        return gasBookNo;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    public String getDistributerContact() {
        return distributerContact;
    }
      
    
      
    
}
