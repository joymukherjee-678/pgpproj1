<%-- 
    Document   : distributer
    Created on : 24 Apr, 2020, 10:23:53 AM
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
                
                margin-left:500px;
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
            
            .register{
                
                margin-left: 90px;
                
                 margin-top: 20px;
                
            }
            
             .login{
                
                margin-left: 1300px;
                
                margin-top: 3px;
                
            }
            
                 h2{
                
                
                padding-left: 100px;
                
            }
            
        </style>
        
    </head>
    <body>
      
         <header>
            
            INDANE GAS AGENCY
            
        </header>
        
           <h2>
            
                 DISTRIBUTER PORTAL
            
        </h2>
        
        <nav class="ist">
        
             <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="admin.jsp"> ADMIN </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="distributer.jsp"> DISTRIBUTER </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         <a href="distributerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
           <nav class="snd">
            
            <img src="distributerGas.jpg"/>
            
        </nav>
        
        <form action="distributerRegistrationPage.jsp" >
            
            <input type="submit" value="Register Here" class="register">
            
        </form>
        
           <form action="distributerSigninPage.jsp" >
            
               <input type="submit" value="Login Here" class="login">
            
        </form>
        
    </body>  
    
</html>
