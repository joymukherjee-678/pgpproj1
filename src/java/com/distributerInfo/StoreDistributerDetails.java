/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.distributerInfo;

import com.modelCustomerDetails.ModelCustomerDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Joy
 */
public class StoreDistributerDetails {
    
        int row=0;
    
         
    
          Connection con;
          Statement stmt;
          ResultSet rs;
          PreparedStatement ps;
   
          
     
    int i=0;  
    
    public StoreDistributerDetails( )
    {
        
        try{
               
              Class.forName("org.apache.derby.jdbc.ClientDriver");
              
               con= DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
               
                System.out.println("connection established");
               
           }
        
            catch(ClassNotFoundException | SQLException ex)
            {
                
                System.out.println("connection error:"+ex.getMessage());
                
                
            }
        
          //   return i;   
        
    }

   
    
    public int InsertData(ModelDistributerDetails mdd) {
        
        try{
        ps= con.prepareStatement("Insert into app.StoreDistributerDetails(FIRSTNAME,  LASTNAME,  GENDER, EMAIL, CONTACT, AADHARNUMBER,PASSWORD, PANNUMBER,  FULLNAME, DISTRIBUTERLOCATION, ADMINEMAIL) values(?, ?,?, ?, ?, ?, ?, ?,?,?, ?)");
        
         ps.setString(1, mdd.getFirstName());
         
         ps.setString(2, mdd.getLastName());
         
         ps.setString(3, mdd.getGender());
         
         ps.setString(4, mdd.getEmail());
         
         ps.setString(5, mdd.getContact());
         
         ps.setString(6, mdd.getAadharNumber());
         
         ps.setString(7, mdd.getPassword());
         
         ps.setString(8, mdd.getPanNumber());
         
        ps.setString(9,mdd.getFullName());
         
          ps.setString(10, mdd.getDistributerLocation());
          
          ps.setString(11, mdd.getAdminEmail());
         
        
        row= ps.executeUpdate();
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
    }
    
}
