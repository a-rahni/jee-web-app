<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Ma permi&egrave;re page JSP" />
    </jsp:include>
    <body>
        <h1>Bonjour <%= request.getParameter("name") %> !</h1>
    </body>
</html>