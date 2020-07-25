
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.BeanClassSubmitCustomerInfo;
import com.modelCustomerDetails.*;
  import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Joy
 */
public class StoreCustomerDetails {
    
          int row=0;
    
         
    
          Connection con;
          Statement stmt;
          ResultSet rs;
          PreparedStatement ps;
   
          
     
    int i=0;  
    
    public StoreCustomerDetails( )
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

   
    
    public int InsertData(ModelCustomerDetails mcd) {
        
        try{
        ps= con.prepareStatement("Insert into app.StoreCustomerDetails(FIRSTNAME,  LASTNAME,  GENDER, EMAIL, PASSWORD,  LOCATION,  FULLNAME,  DOB, NUMBER, CONTACTNO) values(?, ?,?, ?, ?, ?, ?, ?, ?, ?)");
        
         ps.setString(1, mcd.getFirstName());
         
         ps.setString(2, mcd.getLastName());
         
         ps.setString(3, mcd.getGender());
         
         ps.setString(4, mcd.getEmail());
         
         ps.setString(5, mcd.getPassword());
         
         ps.setString(6, mcd.getLocation());
         
         ps.setString(7, mcd.getFullName());
         
         ps.setString(8, mcd.getDob());
         
         ps.setString(9, mcd.getNumber());
         
         ps.setString(10,mcd.getContact());
        
        row= ps.executeUpdate();
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row;
        
    }
        
        
        
          
        
        
        
        
         
    
    
    
    
}
