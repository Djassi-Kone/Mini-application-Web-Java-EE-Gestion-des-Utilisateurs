package com.example.userapp.servlets;

import com.example.userapp.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String email = request.getParameter("email");

        // Vérification des champs vides
        if (nom == null || nom.trim().isEmpty() || email == null || email.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() +
                    "/error.jsp?error=Tous+les+champs+doivent+être+remplis");
            return;
        }

        User user = new User(nom, email);
        HttpSession session = request.getSession();

        // Stocker l'utilisateur courant (le dernier connecté)
        session.setAttribute("utilisateur", user);

        // Récupérer la liste d'utilisateurs depuis la session
        List<User> utilisateurs = (List<User>) session.getAttribute("utilisateurs");

        if (utilisateurs == null) {
            utilisateurs = new ArrayList<>();
        }

        // Vérifier si l'utilisateur existe déjà à travers l'email
        for (User existingUser : utilisateurs) {
            if (existingUser.getEmail().equals(email)) {
               // response.sendRedirect(request.getContextPath() +
               //         "/userDetails.jsp?error=Cet+email+existe");
                return;
            }
        }

        // Ajouter le nouvel utilisateur
        utilisateurs.add(user);
       // response.sendRedirect(request.getContextPath() +
       //         "/userDetails.jsp?error=utilisateur+ajouté+avec+succès");

        // Mettre à jour la liste en session
        session.setAttribute("utilisateurs", utilisateurs);

        // Rediriger vers la page d'affichage
        response.sendRedirect(request.getContextPath() + "/userDetails.jsp");
    }
}