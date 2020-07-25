<%-- 
    Document   : CustomerSigninPage
    Created on : 24 Mar, 2020, 12:32:10 PM
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
               background-color:greenyellow;
               height:70px;
                
            }   
            
             .ist a{
                
                margin-left: 110px;
                line-height:70px;
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
               
                margin-left: 400px;
                margin-top: 300px;
                
            }
            
            .h{
                
                align:center;
                
                 color:red;
                 
                 font-size:15px;
                
            }
           
        </style>
        
        
        
    </head>
    <body>
        
         <header>
            
            INDANE GAS AGENCY
            
        </header>
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="admin.jsp"> ADMIN </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="distributer.jsp"> DISTRIBUTER </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         <a href="customerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
           <nav class="snd">
            
            <img src="loginHere.jpg"/>
            
        </nav>
        
       
        
        
        
        
        
        <form action="./CustomerLoginInfo" method="get">
            
            <table>
            
                <tr class="autostyle2">
                    
                    <td colspan="2">LOGIN</td>
                    
                </tr>
                
                <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                
                
                 <tr>
                    
                    <td>
                        
                        Email Id :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="100" name="email" required/>
            
                    </td>
            
                </tr>
                
                
                
                 <tr>
                    
                    <td>
                        
                        Password :
                        
                    </td>
                    
                    <td>
                    
            <input type="password"  size="100" name="password" required/>
            
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
