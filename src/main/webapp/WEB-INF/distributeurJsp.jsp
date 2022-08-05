<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="/include/header.jsp">
        <jsp:param name="title" value="information distributeur" />
    </jsp:include>
    <body> 
        <h2>Crédit restant: 
            <c:out value="${credit}" />
        </h2>
        
        <form method="POST" action="DistributeurServlet">
            <input name="credit1" type="submit" value="+1" />
            <input name="credit2" type="submit" value="+2" />
            </br>
            <label for="montantAjouter">Montant à inserer :</label>
            <input type="number" name="montantInsere" />
            <input name="inserer" type="submit" value="Inserer" />
        </form>
        
        <br/>
        <p> Liste des produits </p>
        <table>
            <thead>
                <tr>
                    <th> Numéro de produit</th> <th>Nom</th> <th>Quantité</th> <th>Prix</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${stock}" var="produit">
                    <tr>
                        <td> ${produit.id}</td>
                        <td> ${produit.nom}</td>
                        <td> ${produit.quantite}</td>
                        <td> ${produit.prix}</td>
                    </tr>
                </c:forEach>
            </tbody>
           
        </table>
        
        <form method="POST" action="DistributeurServlet">
            
            <label for="idProduit">Numéro du produit :</label>
            <input type="number" name="idProduit" />
            <input name="acheter" type="submit" value="Acheter" />
            
        </form>
        
        
      
    
      

    </body>
</html>
