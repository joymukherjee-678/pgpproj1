<%-- 
    Document   : search
    Created on : 24 Apr, 2020, 8:02:35 PM
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
                line-height: 70px;
                    
            }
            
            .autostyle3{
                
               text-align: center; 
                
                
            }
            
            table{
                
                border:none;
               
                margin-left: 400px;
                margin-top: 150px;
                
            }
            
            .signin{
                
                margin-left: 1300px;
                
                
            }
            
            h2{
                
                
                padding-left: 100px;
                
            }
            
            ID{
                
                margin-top: 50px;
                
            }
            
        </style>
        
    </head>
    <body>
        
        <header>
            
            INDANE GAS AGENCY
            
        </header>
        
        <h2>
            
            DISTRIBUTER HOME PAGE
            
        </h2>
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="distributer.jsp"> DISTRIBUTER MAIN PAGE </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewDistributerDetails.jsp"> VIEW DISTRIBUTER BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        <a href="addCustomer.jsp"></a>
        
         <a href="viewNewConnectionStatus.jsp"> GAS ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
        <a href="addCustomer.jsp">  ADD CUSTOMER </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="deleteCustomer.jsp"> DELETE CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
       
        
        <a href="viewDeliveryStatus1.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;
         
        <a href="search.jsp"> SEARCH </a>           &nbsp;&nbsp;
        
       
        
        <a href="distributerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;
        
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
              
        
                  <form action="view.jsp" method="get">
            
            <table>
            
                <tr class="autostyle2">
                    
                    <td colspan="2"> SEARCH FOR A CUSTOMER</td>
                    
                </tr>
                
              <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                
                
                 <tr>
                    
                    <td>
                        
                            CustomerID :
                        
                    </td>
                    
                    <td class="ID">
                    
            <input type="text"  size="100" name="customerID" required/>
            
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

