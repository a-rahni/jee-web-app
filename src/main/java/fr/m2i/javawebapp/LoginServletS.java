
package fr.m2i.javawebapp;

import fr.m2i.javawebapp.session.User;
import fr.m2i.javawebapp.session.UserDb;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServletS extends HttpServlet {

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
        this.getServletContext().getRequestDispatcher("/WEB-INF/loginS.jsp").forward(request, response);
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

        // On r�cup�re les param�tres du formulaire
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // On v�rifie dans notre base de donn�e qu'un user existe avec les identifiants envoy�s
        User user = UserDb.checkUser(email, password);

        // Si le user est null, les identifiants sont invalides
        // On set le message d'erreur et on affiche la page de login
        if (user == null) {
            request.setAttribute("error", "Veuillez v�rifier vos identifiants !");
            this.getServletContext().getRequestDispatcher("/WEB-INF/loginS.jsp").forward(request, response);
            return; // on arr�te la m�thode ici
        }

        // Si on arrive ici c'est que le user est diff�rent de null -> on la trouver dans notre base de donn�e
        
        // On cr�er une nouvelle session avec le param�tre true
        HttpSession session = request.getSession(true);
        // On stock le user connecter dans la session
        session.setAttribute("user", user);

        // On affiche la page welcome
        this.getServletContext().getRequestDispatcher("/WEB-INF/welcomeS.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}