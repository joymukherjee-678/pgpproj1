<%-- 
    Document   : InvalidateSession
    Created on : 8 Jul, 2020, 1:16:53 AM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            
           // session.invalidate();
            
             response.sendRedirect("Session.jsp");
            
            %>
        
        
        
    </body>
</html>
