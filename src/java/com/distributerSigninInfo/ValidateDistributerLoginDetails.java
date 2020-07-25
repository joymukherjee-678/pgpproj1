/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.distributerSigninInfo;

import com.signinDetails.ModelCustomerLoginDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author Joy
 */
public class ValidateDistributerLoginDetails {
           
         Connection con;
          Statement stmt;
          ResultSet rs;
          PreparedStatement ps;
    
    private String email;
    
    private String password;

    public ValidateDistributerLoginDetails( ) {
       
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
    
    public List GetData(ModelDistributerLoginDetails mdl) {
        
        try{
         ps= con.prepareStatement("select email,password from app.StoreDistributerDetails where email= ? and password= ? ");
        
      // ResultSet  rs= ps.executeQuery( );
        
          ps.setString(1, mdl.getEmail());
          
          ps.setString(2, mdl.getPassword());
          
          ResultSet rs= ps.executeQuery();
        
             while(rs.next())
                     {
                         
                        email= rs.getString("email");
                         password= rs.getString("password");
                         
                         if(email.equals(mdl.getEmail()) && password.equals(mdl.getPassword()))
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
