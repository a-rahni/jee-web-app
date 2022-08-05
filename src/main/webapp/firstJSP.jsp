<%-- 
    Document   : firstJSP
    Created on : 22 juil. 2022, 15:08:30
    Author     : rahni
--%>

<%--    <%@include file="include/header.jsp" %>   --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Ma permière page JSP" />
    </jsp:include>
   <body>
<!--        <h1>Ceci est ma première page JSP</h1>-->
    
    <c:set var="name" value="Ahmed" />
    <h1> Bonjour <c:out value="${name}"/>! </h1>
   </body>
</html>
