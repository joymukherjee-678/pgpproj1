<%-- 
    Document   : distributerRegistrationPage
    Created on : 12 Apr, 2020, 9:32:51 PM
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
               height:30px; 
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
               
                margin-left: 500px;
                margin-top: 200px;
                
            }
            
            .signin{
                
                margin-left: 1300px;
                
                
            }
            
            h2{
                
                 color: red;
                
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
        
         <a href="distributerLogOutPage.jsp"> LOG OUT </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
           <nav class="snd">
            
            <img src="register.jpg"/>
            
        </nav>
        
        <form action="distributerSigninPage.jsp" method="get" class="signin">
            
            <input type="submit" value="Signin"/>
        
        </form>
        
        <form action="./InsertDistributerInfo" method="get">
            
              <table>
            
                <tr class="autostyle2">
                    
                    <td colspan="2">REGISTER</td>
                    
                </tr>
                
                <tr>
                    
                    <td width="100%" colspan="4"></td>
                    
                </tr>
                
                <tr>
                    
                    <td>
                        
                        FirstName :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="firstName" required/>
            
                    </td>
            
                </tr>
                    
                    <tr>
                    
                    <td>
                        
                      LastName   :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="lastName" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        Gender :
                        
                    </td>
                    
                    <td>
                    
            <input type="text" size="50" name="gender" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        Email Id :
                        
                    </td>
                    
                    <td>
                    
            <input type="email"  size="50" name="email" required/>
            
                    </td>
            
                </tr>
                
                  <tr>
                    
                    <td>
                        
                        Contact No :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="contact" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        Aadhar Number :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="aadharNumber" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        Password:
                        
                    </td>
                    
                    <td>
                    
            <input type="password"  size="50" name="password" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                        Pan Number :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="panNumber" required/>
            
                    </td>
            
                </tr>
                
                 <tr>
                    
                    <td>
                        
                       Distributer Name :
                        
                    </td>
                    
                    <td>
                    
            <input type="text"  size="50" name="fullName" required/>
            
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
                        
                        Admin Email :
                        
                    </td>
                    
                    <td>
                    
            <input type="text" size="50" name="adminEmail" required />
            
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
 
        
    
