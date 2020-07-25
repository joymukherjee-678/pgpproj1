/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.storeGasDetails;

import com.storeGas.StoreGasBookDetailsInBeanClass;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Joy
 */
public class DaoGasBookDetails {
 
       Connection con;
    Statement stmt;
    PreparedStatement ps;
    
     int row=0;
    
    public DaoGasBookDetails() {
        
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
    
    public int insertData(ModelGasBookDetails mgbd) {
        
        try{
        ps= con.prepareStatement("insert into app.SubmitGasBookDetails1(contact,  aadhaarNumber, distributerLocation,  gasName,  customerID,  registerDate,  gasBookNo, status, distributerContact) values(?,  ?,  ?,  ?,  ?,  ?, ?,  ?, ?)");
        
          ps.setString(1,mgbd.getContact());
        
           ps.setString(2,mgbd.getAadhaarNumber());
           
           ps.setString(3,mgbd.getDistributerLocation());
           
           ps.setString(4,mgbd.getGasName());
           
            ps.setString(5,mgbd.getCustomerID());
           
           ps.setString(6,mgbd.getRegisterDate());
           
           ps.setString(7,mgbd.getGasBookNo());
           
           ps.setString(8,mgbd.getStatus());
           
           ps.setString(9,mgbd.getDistributerContact());
               
           row= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
    }
    
}
