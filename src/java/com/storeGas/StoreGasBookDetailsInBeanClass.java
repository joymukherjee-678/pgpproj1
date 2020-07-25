package com.storeGas;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Joy
 */
public class StoreGasBookDetailsInBeanClass {
    
   int row;
    
          String FirstName;
          String LastName;
          String gender;
          String email;
       //  private String contact;
          private  String aadhaarNumber;
        private  String password;
          String panNumber;
          String customerLocation;
          String distributerLocation;
         private String registerDate , deliveryDate;
          private String contact;
          private String customerID;
          private String gasBookNo;
                  String status,status1;
                  String gasName , gasAmount;
          
                  
          public StoreGasBookDetailsInBeanClass(String customerID, String gasBookNo, String gasName)        
          {
              
              this.customerID = customerID;
        this.gasBookNo= gasBookNo;
        status1 = "successfully accepted";
        this.gasName=gasName;
              
          }
                  
                  
    public StoreGasBookDetailsInBeanClass(String FirstName, String LastName, String gender, String email,  String aadhaarNumber, String password, String panNumber, String customerLocation, String distributerLocation, String registerDate, String contact, String customerID, String gasBookNo, String status, String gasName) {
        
          this(customerID,  gasBookNo,    gasName);
         //  this(customerID,  gasBookNo,    gasName);
          
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.gender = gender;
        this.email = email;
       // this.contact = contact;
        this.aadhaarNumber = aadhaarNumber;
        this.password = password;
        this.panNumber = panNumber;
        this.customerLocation = customerLocation;
        this.distributerLocation = distributerLocation;
        this.registerDate = registerDate;
         this.contact = contact;
        this.customerID = customerID;
        this.gasBookNo= gasBookNo;
        this.status =status;
        this.gasName=gasName;
    }

   public StoreGasBookDetailsInBeanClass() {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

        public void deliveryStatus(String FirstName, String LastName, String gender, String email,  String aadhaarNumber, String password, String panNumber, String customerLocation, String distributerLocation, String deliveryDate, String contact, String customerID, String gasBookNo, String status, String gasName)
        {
            
              this.FirstName = FirstName;
        this.LastName = LastName;
        this.gender = gender;
        this.email = email;
       // this.contact = contact;
        this.aadhaarNumber = aadhaarNumber;
        this.password = password;
        this.panNumber = panNumber;
        this.customerLocation = customerLocation;
        this.distributerLocation = distributerLocation;
        this.deliveryDate = deliveryDate;
         this.contact = contact;
        this.customerID = customerID;
        this.gasBookNo= gasBookNo;
        this.status = "successfully delivered";
        this.gasName=gasName;
          gasAmount=     "2000" ;
            
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

   

    public String getAadhaarNumber() {
        return aadhaarNumber;
    }

    public String getPassword() {
        return password;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public String getCustomerLocation() {
        return customerLocation;
    }

    public String getDistributerLocation() {
        return distributerLocation;
    }

    public String getRegisterDate() {
        return registerDate;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    
    
     public String getContact() {
        return contact;
    }

    public String getCustomerID() {
        return customerID;
    }

    public String getGasBookNo() {
        return gasBookNo;
    }

    public String getStatus() {
        return status;
    }

    public String getStatus1() {
        return status1;
    }
    
    public String getGasName() {
        return gasName;
    }

    public String getGasAmount() {
        return gasAmount;
    }
    
    
         
     
    
    
    
}
