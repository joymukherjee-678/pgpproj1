<%-- 
    Document   : distributerLogOutPage
    Created on : 8 Jul, 2020, 2:22:39 AM
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
            
            body{
                
                background-color: grey;
                
            }
            
             .link1{
                
                color: red;
                
                text-align:center;
                
                margin-top: 200px;
                
                font-size: 40px;
                
               
            }
            
            .link2{
                
                color: red;
                
                text-align:center;
                
               line-height:300px;
                
                font-size: 40px;
            }
            
            a:hover{
                
                color:red;
                    text-decoration:none;
                
             }
        </style>
        
        
    </head>
    
    <body>
        
        <header>
            
            INDANE GAS AGENCY
            
        </header>
        
        
        <%
            
             session.invalidate();
             
               %>
               
               <script type="text/javascript">
                   
                   alert("successfully Logged out");
                   
                   document.location.href="distributer.jsp";
                   
                   
               </script>
               
    </body>
</html>
