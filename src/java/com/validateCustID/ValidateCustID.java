package com.validateCustID;

import com.modelCustomerDetails.ModelCustomerDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Joy
 */
public class ValidateCustID {
    
    int row=0;
    
         
    
          Connection con;
          Statement stmt;
          ResultSet rs;
          PreparedStatement ps;
   
          String custID;
     
    int i=0;  
    
    public ValidateCustID(String custID)
    {
        
        this.custID= custID;
        
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

       String custID1=null;
    
    public String InsertData(ValidateCustID vc) {
        
        try{
        ps= con.prepareStatement("select customerID from app.NewConnectionStatus where customerID = ?");
        
          ps.setString(1,custID);
        
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                
                custID1= rs.getString(1);
                
                
            }
          
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return custID1;
        
    }
        

    
    
}
