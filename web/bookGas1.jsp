<%-- 
    Document   : bookGas1
    Created on : 6 Jul, 2020, 10:40:29 AM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.storeGasDetails.*"%>
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
            
            footer{
                
                text-align: center;
                
                 text-color:black;
                
            }
            
            h2{
                
                color:red;
                
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
        
         <a href="viewConnectionStatus.jsp">  ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
       
        
         <a href="deliveryDetails.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <a href="customerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
               
        <nav class="snd">
            
            <img src="bookGasImage.jpg"/>
            
        </nav>
        
        <form action="./SubmitGasBookDetails1" method="get">
            
            <table>
            
                <tr class="autostyle2">
                    
                    <td colspan="2">REGISTER</td>
                    
                </tr>
                
                <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                  <tr>
                    
                    <td>
                        
                       Customer Contact :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="contact" required/>
            
                    </td>
            
                </tr>
                
              <tr>
                    
                    <td>
                        
                        Aadhaar Number :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="aadhaarNumber" required/>
            
                    </td>
            
                </tr>
                
               
                
                
                
                
                
                 <tr>
                    
                    <td>
                        
                        Distributer Location :
                        
                    </td>
                    
                    <td>
                    
            <input type="text" size="50" name="distributerLocation" required />
            
                    </td>
            
                </tr>
                
               
                
               
                
                <tr>
                    
                    <td>
                        
                        GasName :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="gasName" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                         Distributer Contact :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="distributerContact" required/>
            
                    </td>
            
                </tr>
                
                 <tr class="autostyle3">
                    
                    <td colspan="2">
                        
                 
                    
                        <input type="submit" value="SUBMIT">
                        
                    </td>
            
                </tr>
                
            </table>
        </form>
        
    </body>
</html>

