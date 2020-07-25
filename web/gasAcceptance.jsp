<%-- 
    Document   : gasAcceptance
    Created on : 27 Mar, 2020, 1:46:37 PM
    Author     : Joy
--%>

<%@page import="com.newStatus.storeData"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="com.newStatus.NewConnectionStatus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.storeGas.SubmitGasBookDetails" %>
<%@page import="com.storeGas.StoreGasBookDetailsInBeanClass" %>
<%@page import="com.storeGas.StoreGasBookDetailsInDatabase" %>
<%@page import="com.loginNewGas.NewLoginGas" %>
<%@page import="com.loginNewGas.Bean" %>
<%@page import="com.loginNewGas.GetPassword" %>



<!DOCTYPE html>
<html>
    <head>
        
       <style>
            
            body{
                
                background-color: grey;
                
            }
            
             header{
                
              color:blue;
              text-align:center;
                font-size: 50px;
                font-weight:bold;
                line-height:70pt;
            }  
            
             .ist{
                
                
                border-color: greenyellow ;
               width:1500px;
               background-color:none;
               height:70px;
                margin-top: 10px;
            }   
            
             .ist a{
                
                margin-left: 90px;
                line-height:70px;
              
               color:red;
               text-decoration: none;
            }  
            
            .snd{
                
                border-color: white ;
               width:200px;
               background-color:greenyellow;
               height:50px; 
                margin-top: 4px;
                
                margin-left:600px;
            }
            
            
            
            .autostyle2{
                
               text-align: center; 
                
                font-weight: bold;
                font-size: 25px;
            }
            
            .autostyle3{
                
               text-align: center; 
                
                
            }
            
            table{
                
                border:none;
               
                margin-left: 300px;
                margin-top: 200px;
                
            }
            
            .signin{
                
                margin-left: 1300px;
                
                
            }
            
            h2{
                
                
                padding-left: 100px;
                
            }
            
            h3{
                
               line-height: 110px;
               
               text-align: center;
                
            }
            
            table{
                
               margin-left: 90px;
               margin-top: 65px;
                
            }
            
        </style>  
        
    </head>
    <body>
        
         <header>
            
            INDIAN OIL CORPORATION
            
        </header>
        
        <h2>
            
            CUSTOMER HOME PAGE
            
        </h2>
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="bookGas.jsp"> BOOK GAS </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewBooklDetails.jsp"> VIEW BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        
        <a href="newConnectionLogin.jsp"> GAS ACCEPTANCE </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="addCustomer.jsp">  ADD CUSTOMER </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="deleteCustomer.jsp"> DELETE CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
        <%
            
                String password= (String)request.getAttribute("password");
                
              //  out.println(password);
                
               //      String status= (String)session.getAttribute("status");
                     
                     String id="io",gasBookNo="gb",gasName="gn",status1="st";
                     
                         
                     if(password.equals("null"))
                         {
                             
                           //  List l= new LinkedList( );
                             
                             %>
                             
                             <a href="bookGas.jsp"> PLEASE REGISTER FIRST </a>
                             
                             <%
                             
                             
                         }
            

                          
                           
                           
                               
                               
                         else
                         
                         {
                             
                             
                             
                               NewConnectionStatus ncs= new NewConnectionStatus( );
                             
                              List l= ncs.getData(password);
                             
                                  Iterator i=l.listIterator();
                                  
                                  int j=0;
                                  
                                  while(i.hasNext())
                                  {
                                      
                                    if(j==0)  
                                    {
                                        
                                       id=(String)i.next();
                                        
                                    }
                                      
                                      if(j==1)  
                                    {
                                        
                                       gasBookNo=(String)i.next();
                                        
                                    }
                                      
                                      if(j==2)  
                                    {
                                        
                                       gasName=(String)i.next();
                                        
                                    }
                                      
                                      j++;
                                    
                                  }
                                  
                           //       out.println(id+""+gasBookNo+""+gasName);
                                  
                                    status1="accepted";
                                    
                                    storeData sd = new storeData(id,gasBookNo, gasName, status1);
                                  
                                  int row= ncs.InsertData(sd);
                                 
                                    out.println(row);
                                  
                                  if(row>0)
                                  {
                                      
                                      RequestDispatcher rd= request.getRequestDispatcher("viewConnectionStatus.jsp");
                                      
                                                            rd.forward(request, response);
                                      
                                  }
                              
                         }
                             
                         

            %>
        
        
    </body>
</html>
