<%-- 
    Document   : logout
    Created on : 27 juil. 2022, 11:22:32
    Author     : rahni
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/include/header.jsp">
        <jsp:param name="title" value="logout page" />
    </jsp:include>
    <body>
        
        <script>
         setTimeout(function(){
            window.location.href = '/java-web-app/LoginServlet';
         }, 5000);
        </script>
        
<!--        <h2> votre role: <c:out value="${user.getRole()}" /></h2>-->
        <h2> vous etes deconnecté, vous allez etre redirigé vers la page login dans 5s   </h>
       </br>
       
       
        
        
    </body>
</html>
