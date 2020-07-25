<%-- 
    Document   : adminLoginInsert
    Created on : 4 Jul, 2020, 8:26:58 PM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

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
               
                margin-left: 600px;
                margin-top: 400px;
                
            }
            
            .h{
                
                align:center;
                
                 color:red;
                 
                 font-size:15px;
                
            }
           
            h3{
                
                text-align:center;
                 color: red;
                
            }
            
        </style>
  
        
    </head>
    <body>
       
           <header>
            
            INDANE GAS AGENCY
            
        </header>

        
         <sql:setDataSource var="db"  driver="org.apache.derby.jdbc.ClientDriver" 
                            url="jdbc:derby://localhost:1527/sample" user="app" password="app"/>
        
         <sql:query dataSource="${db}" var="result">
             
             select * from APP.submitAdminInfo where email= ? and password = ?
                   
             <sql:param value="${param.email}"/>
             
             <sql:param value="${param.password}"/>
             
             </sql:query>
             
             <c:forEach var="table" items="${result.rows}">
                 
                 <c:set var="email1" value="${table.email}"/>
                 
                  <c:set var="password1" value="${table.password}"/>
                 
                 
             </c:forEach>
             
             <c:choose>
             
             <c:when test="${param.email=='joymukherjee932@gmail.com'}">
                
                 <c:choose>
                 
             <c:when test="${param.password=='joy12'}">
                 
                  <h3> MY DETAILS </h3>
                
           <table border="1">
              
                <tr>
                    <th>OWNERNAME</th>
                   
                    <th>EMAIL</th>
                   
                    
                </tr>
            
           
             <c:forEach var="table" items="${result.rows}">  
                
                <tr>
                    
                    
<td><c:out value="${table.OwnerName}"/></td>  
<td><c:out value="${table.Email}"/></td>         
   
    
           
                </tr>
                    
                   </c:forEach>
           
        </table>
        
                  <script type="text/javascript">
                      
                      alert("validation successfull");
                      
                      document.location.href = "accessDifferentPortalFromAdmin.jsp";
                      
                  </script>
                  
            </c:when>
                 
                    <c:otherwise>
                    
                         <script type="text/javascript">
                    
                     alert("Invalid Password");
                     
                     document.location.href="adminSigninPage.jsp";
                    
                    </script>
                    
                </c:otherwise>
                    
                    </c:choose>
                  
             </c:when>
        
                      
                
                <c:otherwise>
                    
                    <script type="text/javascript">
                    
                     alert("Invalid Email");
                     
                     document.location.href="adminSigninPage.jsp";
                    
                    </script>
                    
                </c:otherwise>
                    
             </c:choose>
                    
    </body>
</html>
