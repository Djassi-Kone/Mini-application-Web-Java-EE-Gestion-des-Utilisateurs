<%@ page isErrorPage="true" %>
<%--
  Created by IntelliJ IDEA.
  User: DELLi5
  Date: 16/06/2025
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>PAGE D'ERREUR</title>
</head>
<body>

<h2>Une erreur est survenue sur la page</h2>

<p style="color: red">Désolé, mais tous les champs doivent être remplit.</p>

<% if (exception != null) { %>
<h4>Plus de détaille :</h4>
<p><strong>Type :</strong> <%= exception.getClass().getName() %></p>
<p><strong>Message :</strong> <%= exception.getMessage() %></p>
<% } %>
</body>
</html>


