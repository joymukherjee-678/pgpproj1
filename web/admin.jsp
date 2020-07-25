<%-- 
    Document   : admin
    Created on : 11 May, 2020, 9:56:17 PM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <style>
            
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
                
                margin-left: 100px;
                line-height:70px;
               text-decoration: none;
            }  
            
            body{
                
                
                
                background-color: grey;
            }   
            
            .snd{
                
                border-color: silver ;
               width:200px;
               background-color:silver;
               height:50px; 
                margin-top: 50px;
                
                margin-left:300px;
            }
            
            .snd img{
                
                height:500px;
                width:900px;
                
            }
           
                 h2{
                
                
                padding-left: 100px;
                
            }
            
            .im{
                
                border-color: white ;
               width:200px;
               background-color:grey;
               height:50px; 
                margin-top: 4px;
                
                margin-left:500px;
                
            }
            
            .register{
                
                  margin-left: 90px;
                
                 margin-top: 20px;
                
            }
            
               .login{
                
                  margin-left: 1300px;
                
                margin-top: 3px;  
                   
            } 
                 
            img{
                
                width:500px;
                
                height:500px;
                
                
            }
            
            
                 
        </style>
        
        
        
    </head>
    <body>
        
        <header>
            
            INDANE GAS AGENCY
            
        </header>
        
             <h2>
            
                 ADMIN PORTAL
            
        </h2>
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="admin.jsp"> ADMIN </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="distributer.jsp"> DISTRIBUTER </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="customer.jsp"> CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="modify.jsp">  MODIFY </a>           &nbsp;&nbsp
        
        <a href="adminLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>
        
      <nav class="im">
            
            <img src="adminPortalImage.jpg"/>
            
        </nav>
        
        <form action="adminRegistrationPage.jsp" >
            
            <input type="submit" value="Register Here" class="register">
            
        </form>
        
           <form action="adminSigninPage.jsp" >
            
               <input type="submit" value="Login Here" class="login">
            
        </form>
        
                                                        
        
    </body>
</html>


    