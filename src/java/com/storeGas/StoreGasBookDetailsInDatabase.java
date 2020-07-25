/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.storeGas;
import java.sql.*;
/**
 *
 * @author Joy
 */

  // Connection con;
    

public class StoreGasBookDetailsInDatabase {

    Connection con;
    Statement stmt;
    PreparedStatement ps;
    
     int row=0;
    
    public StoreGasBookDetailsInDatabase() {
        
         try{
               
              Class.forName("org.apache.derby.jdbc.ClientDriver");
              
               con= DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
               
                System.out.println("connection established");
               
           }
        
            catch(ClassNotFoundException | SQLException ex)
            {
                
                System.out.println("connection error:"+ex.getMessage());
                
                
            }
        
        
        
    }
    
    public int InsertData(StoreGasBookDetailsInBeanClass sbi) {
        
        try{
        ps= con.prepareStatement("insert into app.StoreGasBookDetailsInDatabase(FirstName,  LastName,  gender,  email,  aadhaarNumber, password,  panNumber, customerLocation, distributerLocation, registerDate,  contact, customerID, gasBookNo, status, gasName) values(?,  ?,  ?,  ?,  ?,  ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?)");
        
          ps.setString(1,sbi.getFirstName());
        
           ps.setString(2,sbi.getLastName());
           
           ps.setString(3,sbi.getGender());
           
           ps.setString(4,sbi.getEmail());
           
            ps.setString(5,sbi.getAadhaarNumber());
           
           ps.setString(6,sbi.getPassword());
           
           ps.setString(7,sbi.getPanNumber());
           
           ps.setString(8,sbi.getCustomerLocation());
           
           ps.setString(9,sbi.getDistributerLocation());
           
           ps.setString(10,sbi.getRegisterDate());
           
           ps.setString(11,sbi.getContact());
           
            ps.setString(12,sbi.getCustomerID());
            
             ps.setString(13,sbi.getGasBookNo());
             
              ps.setString(14,sbi.getStatus());
           
               ps.setString(15,sbi.getGasName());
               
               
           
            row= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
    }

   public  int getData(StoreGasBookDetailsInBeanClass sbi) {
    
          try{
        ps= con.prepareStatement("insert into app.NewConnectionStatus( customerID, gasBookNo, status, gasName) values(?,  ?,  ?,  ?)");
        
   /*       ps.setString(1,sbi.getFirstName());
        
           ps.setString(2,sbi.getLastName());
           
           ps.setString(3,sbi.getGender());
           
           ps.setString(4,sbi.getEmail());
           
            ps.setString(5,sbi.getAadhaarNumber());
           
           ps.setString(6,sbi.getPassword());
           
           ps.setString(7,sbi.getPanNumber());
           
           ps.setString(8,sbi.getCustomerLocation());
           
           ps.setString(9,sbi.getDistributerLocation());
           
           ps.setString(10,sbi.getRegisterDate());
           
           ps.setString(11,sbi.getContact());  */
           
            ps.setString(1,sbi.getCustomerID());
            
             ps.setString(2,sbi.getGasBookNo());
             
              ps.setString(3,sbi.getStatus1());
           
               ps.setString(4,sbi.getGasName());
               
               
           
            row= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
        //return 1;
        
    }
     
     public int storeData(StoreGasBookDetailsInBeanClass sbi1) {
        
        try{
        ps= con.prepareStatement("insert into app.DeliveryStatus(FirstName,  LastName,  gender,  email,  aadhaarNumber, password,  panNumber, customerLocation, distributerLocation, deliveryDate,  contact, customerID, gasBookNo, status, gasName, gasAmount) values(?,  ?,  ?,  ?,  ?,  ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
          ps.setString(1,sbi1.getFirstName());
        
           ps.setString(2,sbi1.getLastName());
           
           ps.setString(3,sbi1.getGender());
           
           ps.setString(4,sbi1.getEmail());
           
            ps.setString(5,sbi1.getAadhaarNumber());
           
           ps.setString(6,sbi1.getPassword());
           
           ps.setString(7,sbi1.getPanNumber());
           
           ps.setString(8,sbi1.getCustomerLocation());
           
           ps.setString(9,sbi1.getDistributerLocation());
           
           ps.setString(10,sbi1.getDeliveryDate());
           
           ps.setString(11,sbi1.getContact());
           
            ps.setString(12,sbi1.getCustomerID());
            
             ps.setString(13,sbi1.getGasBookNo());
             
              ps.setString(14,sbi1.getStatus());
           
               ps.setString(15,sbi1.getGasName());
               
               ps.setString(16,sbi1.getGasAmount());
               
           
            row= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
    }
   
    }

    
    
    

