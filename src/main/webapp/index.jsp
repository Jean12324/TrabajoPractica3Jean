<%-- 
    Document   : index
    Created on : 21 nov 2024, 1:32:05
    Author     : Jeanc
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: url('<%= request.getContextPath() %>/images/fondoPrac.png') no-repeat center center fixed;
                background-size: cover;
                color: #ffffff; /* Color blanco para el texto */
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Sombra para texto */
            }

            .container {
                text-align: center;
                margin-top: 10vh; /* Ajustado para que esté más arriba */
            }

            .welcome-text {
                font-size: 3.5rem; /* Tamaño grande */
                font-weight: bold;
                line-height: 1.5;
            }

            .register-link {
                position: fixed;
                bottom: 20px;
                width: 100%;
                text-align: center;
                font-size: 1.2rem; /* Tamaño más delgado */
                font-weight: normal; /* Fuente más delgada */
            }

            .register-link a {
                color: #0000ff; /* Azul eléctrico */
                text-decoration: none;
                text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.6); /* Sombra para el enlace */
            }

            .register-link a:hover {
                color: #ffffff; /* Cambia a blanco al pasar el mouse */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <p class="welcome-text">
                BIENVENIDO A LA PRÁCTICA SESIÓN 3<br>
                DE JEAN CARLOS JAIMES LINO
            </p>
        </div>
        <div class="register-link">
            <p>
                <a href="<s:url action='registerInput' />">Por favor regístrate para nuestra práctica.</a>
            </p>
        </div>
    </body>
</html>
