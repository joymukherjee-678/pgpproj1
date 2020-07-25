<%-- 
    Document   : noData.jsp
    Created on : 16 Jul, 2020, 3:47:27 AM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                line-height:30px;
               
               color:red;
               text-decoration: none;
            }  
            
            .snd{
                
               
               
               background-color:none;
              
                margin-top: 0px;
                
                margin-left:450px;
            }
            
            .snd img{
                
                width:600px;
                
                height:150px; 
                
                margin-top: -50px;
                
                 
                
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
               
                margin-left: 500px;
                margin-top: 50px;
                
            }
            
            .signin{
                
                margin-left: 1300px;
                
                
            }
            
            
            
        </style>
        
    </head>
    <body>
       
         <header>
            
            INDANE GAS AGENCY
            
        </header>
        
        
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="bookGas1.jsp"> BOOK GAS </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewBookDetails.jsp"> VIEW BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        
         <a href="viewNewConnectionStatus.jsp">  ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
       
        
         <a href="viewDeliveryStatus1.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
         
         
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
        
        <script type="text/javascript">
            
                 alert(" Something went wrong");
            
             //  alert(<a href='customerHomePage.jsp'>+"Register Successfully"+</a>);
              
              document.location.href="deleteCustomer.jsp";
            
            </script>
