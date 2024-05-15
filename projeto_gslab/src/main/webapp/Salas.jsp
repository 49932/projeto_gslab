<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>Departamento Escolhido</title>
    <!-- Inclua o CSS do Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }
        .container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .btn {
            margin: 10px;
            font-size: 20px; /* Aumenta o tamanho da letra dos botões */
        }
    </style>
</head>
<body class="text-center">
<div class="container">
    <h1 class="display-4 font-weight-bold">Departamento DEETC</h1>
    <p class="lead">Escolha a sala:</p>
    <div id="salas">
		<% 
		    ArrayList<String> salas = (ArrayList<String>) request.getAttribute("salas");
		    for(String sala : salas) {
		%>
		    <a href="Calendario?sala=<%= sala %>" class="btn btn-outline-dark btn-lg"><%= sala %></a>
		<% 
		    }
		%>
    </div>
</div>
</body>
</html>
