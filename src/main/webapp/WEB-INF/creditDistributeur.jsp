<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="/include/header.jsp">
        <jsp:param name="title" value="information distributeur" />
    </jsp:include>
    <body> 
        <h2>Crédit restant:   <c:out value="${credit}" />  </h2>
<!--        <<h2>Crédit restant:   ${credit}  </h2>-->
 
        <table>
            <caption>Liste des produits</caption>
            <thead>
                <tr>
                    <th> Numéro de produit</th> <th>Nom</th> <th>Quantité</th> <th>Prix</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${stock}" var="produit">
                    <tr>
<!--                    <td> ${produit.id}</td>
                        <td> ${produit.nom}</td>
                        <td> ${produit.quantite}</td>
                        <td> ${produit.prix}</td>
-->
                        
                        <td> <c:out value="${produit.getId()}" /></td>
                        <td> <c:out value="${produit.getNom()}" /></td>
                        <td> <c:out value="${produit.getQuantite()}" /></td>
                        <td> <c:out value="${produit.getPrix()}" /></td>
                        
                    </tr>
                </c:forEach>
            </tbody>
           
        </table>
        
   
    </body>
</html>
