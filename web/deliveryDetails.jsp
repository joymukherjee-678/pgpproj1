<%-- 
    Document   : deliveryDetails
    Created on : 7 Jul, 2020, 1:43:16 AM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:set  var="date1"  value = "<%=new java.util.Date()%>"/>
               
                <fmt:formatDate type="both" dateStyle="short" timeStyle="short"  value="${date1}" var= "deliveryDate1"/>  
                
                   <sql:setDataSource var="db"  driver= "org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/sample" user="app" password="app"/>
        
     <% /**      <sql:update dataSource="${db}" var= "count">
             
             insert into App.IndaneGasAmount(Contact) select Contact from App.SubmitGasBookDetails1
             
        </sql:update>   **/ %>
         
          <sql:update dataSource="${db}" var= "count">
             
             insert into App.DeliveryDetails1(contact,gasName) select Contact, GasName from App.SubmitGasBookDetails1
             
         </sql:update>        
             
             <sql:query  dataSource="${db}" var = "result">
            
            select  gasName from APP.DeliveryDetails1
            
        </sql:query>
            
               <c:forEach var="table" items="${result.rows}">  
                
                <c:set var ="gasName1" value="${table.gasName}"/>
                    
                   </c:forEach>
             
             
         
               
           <sql:update dataSource="${db}" var= "count">
             
             insert into App.DeliveryDetails2(gasName, deliveryDate) values(?,?)
             
             <sql:param value="${gasName1}"/>
             
             <sql:param value="${deliveryDate1}"/>
             
         </sql:update>  
             
            <sql:query  dataSource="${db}" var = "result">
            
            select  deliveryDate from APP.DeliveryDetails2
            
        </sql:query>
            
               
               
               <sql:update dataSource="${db}" var= "count">
             
             insert into App.DeliveryDetails(contact, deliveryDate) select d1.Contact, d2.deliveryDate
             
               from App.DeliveryDetails1 d1 INNER JOIN App.DeliveryDetails2 d2 ON d1.gasName = d2.gasName
             
         </sql:update>    
               
               <jsp:forward page="viewDeliveryStatus.jsp"/>
               
        
    </body>
</html>
