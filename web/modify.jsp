<%-- 
    Document   : modify
    Created on : 14 Jul, 2020, 4:17:46 PM
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
                
                margin-left: 110px;
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
        
           
        
        <a href="admin.jsp"> ADMIN </a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="addDistributer.jsp">  ADD DISTRIBUTER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="searchDistributer.jsp"> SEARCH DISTRIBUTER </a>
        
        <a href="deleteDistributer.jsp"> DELETE DISTRIBUTER </a>           &nbsp;&nbsp;
        
         <a href="adminLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>
        
      <nav class="im">
            
            <img src="adminPortalImage.jpg"/>
            
        </nav>
        
        
        
                                                        
        
    </body>
</html>

