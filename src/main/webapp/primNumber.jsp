<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="liste nombre premiers" />
    </jsp:include>
    <body>
        <c:set var="premier" value="Nombre premier" scope="page" />
        <c:set var="nPremier" value="Nombre non premier" scope="page" />
        
        
        <c:forEach var ="i" begin="1"  end="30" step="1">
            <c:set var="bPremier" value = "1" />
            <c:forEach var ="j" begin="2"  end="${i-1}" step="1">
                <c:if test="${i % j==0 && i!=1 && i!=2}">
                    <c:set var="bPremier" value = "0" />
                </c:if>
            </c:forEach>
                    
                <c:if test="${bPremier==1}">
                    <p> <c:out value="${i}" /> nombre premier </p>
                </c:if>
                 <c:if test="${bPremier==0}">
                    <p> <c:out value="${i}" /> nombre non premier </p>
                </c:if>
                           
        </c:forEach>
        
    </body>
</html>
