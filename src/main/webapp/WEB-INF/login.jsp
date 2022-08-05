<%-- 
    Document   : login.jsp
    Created on : 27 juil. 2022, 09:43:32
    Author     : rahni
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/include/header.jsp">
        <jsp:param name="title" value="Login page" />
    </jsp:include>
    <body>
        <fieldSet>
            <legend> Connexion </legend>
            <form method="POST">
                <label>Email </label>
                <input type="text" name="email"/> </br>
                <label>password </label>
                <input type="text" name="password"/> </br>
                <input type="submit" name="connexion" value="Connexion">
            </form>
        </fieldSet>
        <c:if test="${errorMessage != null}">
                <p style="color:red;"><c:out value="${errorMessage}" /></p>
        </c:if>
                
        <c:if test="${logoutMessage != null}">
                <p style="color:red;"><c:out value="${logoutMessage}" /></p>
        </c:if>
        
        
    </body>
</html>
