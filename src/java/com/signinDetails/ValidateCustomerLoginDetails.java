/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.signinDetails;


import com.modelCustomerDetails.ModelCustomerDetails;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Joy
 */
public class ValidateCustomerLoginDetails {
    
     Connection con;
          Statement stmt;
          ResultSet rs;
          PreparedStatement ps;
    
    private String email;
    
    private String password;

    public ValidateCustomerLoginDetails( ) {
       
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
    
    

   List l= new LinkedList( );
    
    public List GetData(ModelCustomerLoginDetails mcl) {
        
        try{
         ps= con.prepareStatement("select email,password from app.StoreCustomerDetails where email= ? and password= ? ");
        
      // ResultSet  rs= ps.executeQuery( );
        
          ps.setString(1, mcl.getEmail());
          
          ps.setString(2, mcl.getPassword());
          
          ResultSet rs= ps.executeQuery();
        
             while(rs.next())
                     {
                         
                        email= rs.getString("email");
                         password= rs.getString("password");
                         
                         if(email.equals(mcl.getEmail()) && password.equals(mcl.getPassword()))
                         {
                          l.add(email);
             l.add(password);
                     }
             
                         else{
                             
                             
                             
                             l.add("null");
                             l.add("null");
                         }
                         
                         
                     } 
    
                    
             
           /*  else{
                 
                   l.add(null);
                   l.add(null);
                 
             }*/
         
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
           //  l.add(email);
           //  l.add(password);
             
        
        return l;
        
    }   
    
    
    
}
