<%-- 
    Document   : newConnectionLogin
    Created on : 6 Apr, 2020, 10:26:55 PM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
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
                
                margin-left:600px;
            }
            
            .snd img{
                
                width:300px;
                
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
            
            INDIAN OIL CORPORATION
            
        </header>
        
       
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="bookGas.jsp"> BOOK GAS </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewBooklDetails.jsp"> VIEW BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        
        <a href="newConnectionLogin.jsp"> GAS ACCEPTANCE </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="addCustomer.jsp">  ADD CUSTOMER </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="deleteCustomer.jsp"> DELETE CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
        <nav class="snd">
            
            <img src="newConnectionLogin.jpg"/>
            
        </nav>
        
             <form action="./NewLoginGas" method="get">
            
            <table>
            
                <tr class="autostyle2">
                    
                    <td colspan="2"> LOGIN NOW</td>
                    
                </tr>
                
                <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        PASSWORD :
                        
                    </td>
                    
                    <td>
                    
            <input type="password"  size="50" name="password" required/>
            
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
