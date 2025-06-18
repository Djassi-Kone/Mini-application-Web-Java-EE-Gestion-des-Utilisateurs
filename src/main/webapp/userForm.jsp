<%--
  Created by IntelliJ IDEA.
  User: DELLi5
  Date: 16/06/2025
  Time: 07:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>INTERFACE USER</title>
    <style>
        body{
            background-color: #0b516dda;
            text-align: center;
            margin-left: 230px;
        }
        fieldset{
            background-color: rgba(13, 74, 118, 0.272);
            border-radius: 30px 30px 30px 30px;
            box-shadow: 3px 3px 0px black;
            margin-top: 100px;
            margin-left: 200px;

        }
        input{
            border-radius: 10px 10px 10px 10px;
            box-shadow: 2px 2px 0px black;
            height: 40px;
            width: 200px;
            margin-left: 0px;
        }
        button{
            background-color: #08a2b094;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 1px 1px 0px black;
            height: 30px;
            width: 120px;
        }
        form{
            margin-top: 0px;
        }
        .nom{
            width: 100px;
            height: 40px;
            background-color: #D2D2EB;
            border-radius: 10px 0px 0px 10px;
            box-shadow: 2px 2px 0px black;
            margin-top: 2px;
            margin-left: 50px;

        }
        .email{
            width: 100px;
            height: 40px;
            background-color: #D2D2EB;
            border-radius: 10px 0px 0px 10px;
            box-shadow: 2px 2px 0px black;
            margin-top: 2px;
            margin-left: 50px;

        }
        h3{margin-bottom: 50px;}
        .gp1{display: flex;}
        label{margin-top: 0px;}
    </style>

</head>
<body>
<fieldset style="width: 400px; height: 300px; text-align: center">
    <strong>
        <form action="${pageContext.request.contextPath}/userServlet" method="post">

            <h3> BIENVENUE A VOUS !</h3>
            <div class="gp1"><div class="nom"><label for="nom">Nom</label></div>  <div><input type="text" name="nom" placeholder="saisissez votre nom"></div></div><br><br>
            <div class="gp1"><div class="email"><label for="email">E-mail</label></div>   <div><input type="email" name="email" placeholder="saisissez votre e-mail"></div></div><br><br>
            <button type="submit" name="Evoyer"><b>ENVOYER</b></button>
            <button type="reset" name="Reinitialiser"><b>REINITIALISER</b></button>



        </form>
    </strong>
</fieldset>



</body>
</html>
