package fr.m2i.javawebapp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author rahni
 */
import fr.m2i.distributor.Distributeur;
import fr.m2i.distributor.Produit;
import java.util.List;
public class DistributeurServlet extends HttpServlet {


    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //super.doGet(request, response);
        Distributeur dist= Distributeur.getInstance();
        request.setAttribute("credit", dist.getCredit());        
        request.setAttribute("stock", dist.getStock());
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/distributeurJsp.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //super.doPost(request, response);
        Distributeur dist= Distributeur.getInstance();
        String increment1 = request.getParameter("credit1");
        if(increment1 != null){
            dist.setCredit(dist.getCredit()+1);
        }
        
        String increment2 = request.getParameter("credit2");
        if(increment2 != null){
            dist.setCredit(dist.getCredit()+2);
        }
        
        String creditAdd = request.getParameter("inserer");
        if(creditAdd != null){
            if((request.getParameter("montantInsere") != null) &&
                     (request.getParameter("montantInsere") != "")){
                int montant=Integer.parseInt(request.getParameter("montantInsere"));
                dist.setCredit(dist.getCredit()+montant);
            }
        }
                    
         String acheter = request.getParameter("acheter");
         if(acheter != null){
             
             if((request.getParameter("idProduit") != null) &&
                     (request.getParameter("idProduit") != "")){
                int idP=Integer.parseInt(request.getParameter("idProduit"));
                //Produit produit = dist.getProduit(idP);
                
                if(dist.creditSuffisant(idP)){
                    dist.commanderProduit(idP);
                    
                }else{
                    request.setAttribute("creditSuff", dist.creditSuffisant(idP));
                }
                
             }
             
         }
         
        request.setAttribute("credit", dist.getCredit());        
        request.setAttribute("stock", dist.getStock());
          
        this.getServletContext().getRequestDispatcher("/WEB-INF/distributeurJsp.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
