<%-- 
    Document   : addCustomer
    Created on : 27 Mar, 2020, 1:46:56 PM
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
                line-height:70px;
               underline:none;
               color:red;
               text-decoration: none;
            }  
            
            .snd{
                
                border-color: white ;
               width:200px;
               background-color:greenyellow;
               height:50px; 
                margin-top: 4px;
                
                margin-left:650px;
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
                
               margin-left: 300px;
               margin-top: 250px;
                
            }
            
            .auto100{
                
                text-align: center;
                
            }
            
        </style>
        
        
    </head>
    <body>
        
        <header>
            
            INDANE GAS AGENCY
            
        </header>
        
        <h2>
            
            CUSTOMER HOME PAGE
            
        </h2>
        
        <nav class="ist">
        
           <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="bookGas1.jsp"> BOOK GAS </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewBookDetails.jsp"> VIEW BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        
         <a href="viewNewConnectionStatus.jsp">  ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
       
        
         <a href="viewDeliveryStatus1.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        
            
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
           <nav class="snd">
            
            <img src="loginCustID.jpg"/>
            
        </nav>
        
       
        
    <form action="add.jsp" method="get">
            
            <table>
            
                <tr class="autostyle2">
                    
                 <nav class ="auto100">
                    
                    <td colspan="2">LOGIN</td>
                    
                 </nav>
                    
                </tr>
                
                <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                
                
                 <tr>
                    
                    <td>
                        
                        Customer Id :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="100" name="customerID" required/>
            
                    </td>
            
                </tr>
                
                   <tr>
                    
                    <td>
                        
                  Distributer Contact No:
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="100" name="distributerContact2" required/>
            
                    </td>
            
                </tr>
                
                
           <tr class="autostyle3">
                    
                    <td colspan="2">
                        
                 
                    
                        <input type="submit" value="CLICK">
                        
                    </td>
            
                </tr>
                
            </table>
        </form>
        
        
    </body>
</html>
