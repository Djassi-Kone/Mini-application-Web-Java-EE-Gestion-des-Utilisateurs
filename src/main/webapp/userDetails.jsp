<%@ page import="com.example.userapp.models.User" %> <%-- Import de la classe User pour pouvoir l'utiliser --%>
<%@ page import="java.util.List" %> <%-- Import de List pour manipuler la liste d'utilisateurs --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>INFO USER</title>
    <style>
        body{
            background-color: #0b516dda;
            text-align: center;
            margin-left: 200px;
        }

    </style>
</head>
<body>

<%
    // Récupération de l'utilisateur courant stocké dans la session
    User currentUser = (User) session.getAttribute("utilisateur");

    // Récupération de la liste des utilisateurs depuis la session
    List<User> listUtilisateur = (List<User>) session.getAttribute("utilisateurs");
%>


<% if (currentUser != null) { %>
<%-- Affichage des infos de l'utilisateur courant --%>
<h2>Bonjour <%= currentUser.getNom() %> vous êtes connecté !</h2>

<% } else { %>
<%-- Message si aucun utilisateur n'est connecté --%>
<p>Aucun utilisateur en session.</p>
<% } %>



<h2>Liste des utilisateurs enregistrés :</h2>
<% if (listUtilisateur != null && !listUtilisateur.isEmpty()) {
    // Parcours et affichage des utilisateurs enregistrés
    for (User u : listUtilisateur) {
%>
<p> ________________________________________________________ </p>
<p> ||Nom : <%= u.getNom() %>|| Email : <%= u.getEmail() %>||</p>
<p> ________________________________________________________ </p>
<%
    }
} else {
%>
<%-- Message si aucun utilisateur n'est enregistré --%>
<p>Aucun utilisateur enregistré.</p>
<a href="userForm.jsp">Retour au formulaire</a>
<% } %>

</body>
</html>
