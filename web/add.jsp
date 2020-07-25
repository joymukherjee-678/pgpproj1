<%-- 
    Document   : add.jsp
    Created on : 12 Apr, 2020, 12:22:10 PM
    Author     : Joy
--%>

<%@page import="com.validateCustID.ValidateCustID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                
               margin-left: 400px;
               margin-top: 250px;
                
            }
            
        </style>
        
        
    </head>
    <body>
        
        <header>
            
            INDIAN OIL CORPORATION
            
        </header>
        
        <h2>
            
            CUSTOMER HOME PAGE
            
        </h2>
        
        <nav class="ist">
        
            <a href="home.jsp"> HOME </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="bookGas1.jsp"> BOOK GAS </a>  &nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="viewBookDetails.jsp"> VIEW BOOK DETAILS </a>  &nbsp;&nbsp;&nbsp;
        
         <a href="viewNewConnectionStatus.jsp">  ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
        <a href="addCustomer.jsp">  ADD CUSTOMER </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="deleteCustomer.jsp"> DELETE CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         <a href="viewDeliveryStatus1.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
            
        <sql:setDataSource var="db"  driver= "org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/sample" user="app" password="app"/>
        
        <c:set var="distributerContact3" value="${param.distributerContact2}"/>
       
        
        <sql:query dataSource="${db}" var = "result">
            
            select distributerContact from App.AddCustomer1 where customerID = ?
            
            <sql:param value="${param.customerID}"/>
            
        </sql:query>
        
            <c:forEach var="table" items="${result.rows}">
                
                <c:set var="distributerContact1" value="${table.distributerContact}"/>
                
                
            </c:forEach>
            
            <c:if test="${distributerContact3 == distributerContact1}">
                
                
                <script type="text/javascript">
                    
                    alert("This Contact No is already available\nEnter another Contact no");
                    
                       document.location.href = "addCustomer.jsp";
                    
                </script>
                
                
            </c:if>
            
                 <c:if test="${param.distributerContact2 != distributerContact1}">
            
            
                <sql:update  dataSource="${db}" var = "count">
                    
                 
                              
       insert into App.AddCustomer1(CustomerFullName, CustomerEmail, CustomerContact, CustomerLocation, CustomerGender, CustomerAadhaarNumber, GasName, CustomerID, CustomerRegisterDate, GasBookNo, DistributerFullName, DistributerContact, DistributerLocation)
                        
            select sc.FullName, sc.Email, sc.ContactNo, sc.Location, sc.Gender, sg.AadhaarNumber, 
                              
          sg.GasName, sg.CustomerID, sg.RegisterDate, sg.GasBookNo, sd.FullName, sd.Contact, sg.DistributerLocation from
                               
         App.StoreCustomerDetails sc INNER JOIN  App.SubmitGasBookDetails1 sg ON sc.ContactNo = sg.Contact INNER JOIN 
                               
        App.StoreDistributerDetails sd ON sg.DistributerContact = sd.Contact  where  sg.CustomerID = ?
                        
             <sql:param value= "${param.customerID}" />
                              
              
              
        
           
                             
                    <%
                              
                       //     RequestDispatcher rd1 = request.getRequestDispatcher("book.jsp");
                        
                                          //     rd1.include(request, response);
                                               
                                             //   out.println("register first");   
                              
 
                   RequestDispatcher rd = request.getRequestDispatcher("successAddCustomer.jsp");
                        
                                              rd.forward(request, response);

                     //   }

                  /*           else {
                        
                                        
                                      
                                    RequestDispatcher rd1 = request.getRequestDispatcher("invalidCustID.jsp");
                        
                                               rd1.forward(request, response);  
                                               
                                                out.println("register first");   
                        
                         
                          
                             
                        
                   //    RequestDispatcher rd = request.getRequestDispatcher("successAddCustomer.jsp");
                        
                                       //       rd.forward(request, response);

                                      } */
                        
                        %>
                            
                            
                       
                            
                            
            
        </sql:update>
        
                 </c:if>
                
    </body>
</html>
