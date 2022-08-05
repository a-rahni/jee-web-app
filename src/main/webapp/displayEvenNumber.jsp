<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Liste des nombre paires" />
    </jsp:include>
    <body>
        <h1> Even numbers</h1>
        
        <c:forEach var ="i" begin="1"  end="30" step="1">
            <c:if test="${i % 2==0}">
                <p> <c:out value="${i}" /> </p>
            </c:if>
                           
        </c:forEach>
        
    </body>
</html>
