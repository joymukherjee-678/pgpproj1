/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newStatus;

/**
 *
 * @author Joy
 */
public class storeData {
    
    private String customerID,gasBookNo,gasName,status;

    public storeData(String customerID, String gasBookNo, String gasName, String status) {
        this.customerID = customerID;
        this.gasBookNo = gasBookNo;
        this.gasName = gasName;
        this.status = status;
    }

    public String getCustomerID() {
        return customerID;
    }

    public String getGasBookNo() {
        return gasBookNo;
    }

    public String getGasName() {
        return gasName;
    }

    public String getStatus() {
        return status;
    }
    
    
    
}
