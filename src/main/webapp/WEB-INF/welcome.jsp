<%-- 
    Document   : welcome
    Created on : 27 juil. 2022, 10:11:20
    Author     : rahni
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/include/header.jsp">
        <jsp:param name="title" value="welcome page" />
    </jsp:include>
    <body>
        <h1> Welcome, vous avez un role  <c:out value="${user.getRole()}" /> </h1>
       </br>
       
       <form method="POST" action="LogoutServlet">
                <input type="submit" name="logout" value="Deconnexion">
        </form>
        
        
    </body>
</html>
