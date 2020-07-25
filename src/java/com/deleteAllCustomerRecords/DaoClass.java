/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.deleteAllCustomerRecords;

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
public class DaoClass {

      Connection con;
    Statement stmt;
    PreparedStatement ps;
    
    public DaoClass() {
        
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
    
    String contact1, deliveryDate1;
    
    public String retrieveContact(String customerID)
    {
        
     try{
         ps= con.prepareStatement("select contact from App.SubmitGasBookDetails1 where customerID = ? ");
        
      // ResultSet  rs= ps.executeQuery( );
        
          ps.setString(1, customerID);
          
          
          
          ResultSet rs= ps.executeQuery();
        
             while(rs.next())
                     {
                         
                        contact1= rs.getString("contact");
                         
        
                     }
     }
        
        
                         catch(SQLException ex)
                                 {
                                 
                                 
                                 
                                 
                                 }
                         
                 return contact1;
     
    }
    
    public String retrieveDeliveryDate(String contact)
    {
        
     try{
         ps= con.prepareStatement("select deliveryDate from App.IndaneGasAmount where contact = ?");
        
      // ResultSet  rs= ps.executeQuery( );
        
          ps.setString(1, contact);
          
          
          
          ResultSet rs= ps.executeQuery();
        
             while(rs.next())
                     {
                         
                        deliveryDate1= rs.getString("deliveryDate");
                         
        
                     }
     }
        
        
                         catch(SQLException ex)
                                 {
                                 
                                 
                                 
                                 
                                 }
                         
                 return deliveryDate1;
     
    }
    
    int row1=0;
    
    public int removeData1(String contact)
    {
        
        try{
        ps= con.prepareStatement("delete from APP.StoreCustomerDetails where contactNo = ?");
        
          ps.setString(1,contact);
        
           
               
           row1= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row1; 
        
        
        
    }
    
    int row2=0;
    
    public int removeData2(String customerID)
    {
        
        try{
        ps= con.prepareStatement("delete from APP.SubmitGasBookDetails1 where customerID = ?");
        
          ps.setString(1,customerID);
        
           
               
           row2= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row2; 
        
        
        
    }
    
     int row8=0;
     
      public int removeData8(String contact)
    {
        
        try{
        ps= con.prepareStatement("delete from APP.IndaneGasAmount where contact = ?");
        
          ps.setString(1,contact);
        
           
               
           row8= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row8; 
        
        
        
    }
    
    int row4=0;
     
      public int removeData4(String customerID)
    {
        
        try{
        ps= con.prepareStatement("delete from APP.NewConnectionStatus1 where customerID = ?");
        
          ps.setString(1,customerID);
        
           
               
           row4= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row4; 
        
        
        
    }
      
     
      
      int row6=0;
      
      public int removeData6(String contact)
    {
        
        try{
        ps= con.prepareStatement(" delete from APP.DeliveryDetails where contact = ?");
        
          ps.setString(1,contact);
        
           
               
           row6= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row6; 
        
        
        
    }
      
      int row7=0;
      
      public int removeData7(String contact)
    {
        
        try{
        ps= con.prepareStatement(" delete from APP.DeliveryDetails1 where contact = ?");
        
          ps.setString(1,contact);
        
           
               
           row7= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row7; 
        
        
        
    } 
      
       int row3=0;
      
      public int removeData3(String deliveryDate)
    {
        
        try{
        ps= con.prepareStatement(" delete from APP.DeliveryDetails2 where deliveryDate = ?");
        
          ps.setString(1,deliveryDate);
        
           
               
           row3= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row3; 
        
        
        
    } 
      
        int row9=0;
      
      public int removeData9(String customerID)
    {
        
        try{
        ps= con.prepareStatement(" delete from APP.AddCustomer1 where customerID = ?");
        
          ps.setString(1,customerID);
        
           
               
           row9= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row9; 
        
        
        
    } 
      
          int row10=0;
      
      public int removeData10(String contact)
    {
        
        try{
        ps= con.prepareStatement(" delete from APP.DeliveryDetails3 where customerContactNo = ?");
        
          ps.setString(1,contact);
        
           
               
           row10= ps.executeUpdate();
        
        
        }     
        
        
        catch (SQLException ex) {
                  
              }
        
        
        
        
        return row10; 
        
        
        
    } 
      
}
