<%-- 
    Document   : delete1
    Created on : 25 Apr, 2020, 12:17:27 AM
    Author     : Joy
--%>

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
                text-decoration: none;
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
            
            .dis{
                
                margin-left: 500px;
                
                margin-top: 300px;
                
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
        
         <a href="viewNewConnectionStatus.jsp"> GAS ACCEPTANCE STATUS</a>           &nbsp;&nbsp;&nbsp;
        
        <a href="addCustomer.jsp">  ADD CUSTOMER </a>           &nbsp;&nbsp;&nbsp;
        
        <a href="deleteCustomer.jsp"> DELETE CUSTOMER </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
       
        
        <a href="viewDeliveryStatus1.jsp"> DELIVERY STATUS </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
        <a href="search.jsp"> SEARCH </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </nav>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        
        
        <sql:setDataSource var="db"  driver= "org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/sample" user="app" password="app"/>
        
           <sql:query  dataSource="${db}" var = "result">
            
            select * from APP.AddDistributer1 where distributerAadharNumber = ?
            
            <sql:param value="${param.aadharNumber}"/>
            
        </sql:query>
        
            <c:forEach var="table" items="${result.rows}">
                
                <c:set var="distributerAadharNumber1" value="${table.distributerAadharNumber}"/>
                
                
            </c:forEach>
        
                    <c:if test="${distributerAadharNumber1!=null}">
        
        <sql:update  dataSource="${db}">
            
            
                    delete from APP.AddDistributer1 where distributerAadharNumber = ?
                              
                            
                        
                          <sql:param value= "${param.aadharNumber}" />
            
                            
            
        </sql:update>   
                    
                    <sql:update  dataSource="${db}">
            
            
                    delete from APP.StoreDistributerDetails where AadharNumber = ?
                              
                            
                        
                          <sql:param value= "${param.aadharNumber}" />
            
                            
            
        </sql:update>    
                              
                               <script type="text/javascript">
            
                    alert(" records deleted successfully");
            
             //  alert(<a href='customerHomePage.jsp'>+"Register Successfully"+</a>);
              
              document.location.href="deleteDistributer.jsp";
            
            </script>      
        
                    </c:if>
            
                <c:if test="${distributerAadharNumber1==null}">
                    
                    <nav class="dis">
                    
                    <h3> NO SUCH DISTRIBUTER AADHAR NUMBER IS AVAILABLE</h3><br>
                    
                    </nav>
                    
                </c:if>
            
    </body>
</html>
