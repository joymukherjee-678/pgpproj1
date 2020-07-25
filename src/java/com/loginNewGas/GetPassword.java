/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.loginNewGas;
import com.storeGas.StoreGasBookDetailsInBeanClass;
import java.sql.*;

/**
 *
 * @author Joy
 */
public class GetPassword {
    
    Connection con;
    Statement stmt;
    PreparedStatement ps;
    ResultSet rs;
    
     int row=0;
    
    public GetPassword() {
        
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
    
    String password;
    
    public String getPassword(Bean b) {
        
        try{
        ps= con.prepareStatement("select password from App.StoreGasBookDetailsInDatabase where password= ?");
        
          ps.setString(1,b.getPassword());
        
           rs= ps.executeQuery();
               
           while(rs.next())    
           {
            
              password= rs.getString("password");
               
               
           }
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return password;
        
    }  
    
    
}
