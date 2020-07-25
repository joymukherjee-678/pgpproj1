/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newStatus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author Joy
 */
public class NewConnectionStatus {
    
    Connection con;
    Statement stmt;
    PreparedStatement ps;
    ResultSet rs;
    
    public NewConnectionStatus( )
    {
    
    try{
    
     Class.forName("org.apache.derby.jdbc.ClientDriver");
              
               con= DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
               
                System.out.println("connection established");
    
    
}
    
    catch(Exception ex)
    {
        
        
        
    }
    
    }
    
       List l= new LinkedList( );
    
       String customerID;
       
        String gasBookNo;
        
        String gasName;
       
      public  List getData(String password)
        {
            
            try{
    
              
                stmt=con.createStatement();
                
                 ResultSet rs= stmt.executeQuery("select customerID,gasBookNo,gasName from App.StoreGasBookDetailsInDatabase where password="+password);
                
                    while(rs.next())
                    {
                        
                        customerID= rs.getString("customerID");
                       
                        gasBookNo= rs.getString("gasBookNo");
                       
                        gasName= rs.getString("gasName");
                       
                        l.add(customerID);
                        l.add(gasBookNo);
                        l.add(gasName);
                        
                    }
    
}
    
    catch(Exception ex)
    {
        
        
        
    }
     
          return l;    
            
        }
    
        int row=0;
      
                 public  int InsertData(storeData sd)
        {
            
            try{
    
              
                ps=con.prepareStatement("insert into App.NewConnectionStatus(customerID,gasBookNo, gasName, status) values(?, ?, ?, ?)");
                
                   ps.setString(1, sd.getCustomerID());
                   
                   ps.setString(2, sd.getGasBookNo());
                
                    ps.setString(3, sd.getGasName());
                    
                    ps.setString(4, sd.getStatus());
                    
                    row= ps.executeUpdate();
    
}
    
    catch(Exception ex)
    {
        
        
        
    }
     
        return row;  
            
        }
      
      
}
