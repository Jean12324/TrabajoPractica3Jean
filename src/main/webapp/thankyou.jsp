<%-- 
    Document   : thankyou
    Created on : 21 nov 2024, 1:43:31
    Author     : Jeanc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Registro Exitoso</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: url('<%= request.getContextPath()%>/images/fondoPrac.png') no-repeat center center fixed;
                background-size: cover;
                color: #333333;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                height: 100vh;
            }

            .panel-container {
                width: 50%;
                padding: 20px;
                background: rgba(255, 255, 255, 0.9);
                border-radius: 35px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
                text-align: center;
            }

            h3 {
                color: #007bff;
                margin-bottom: 15px;
            }

            ul {
                text-align: left;
                margin: 0;
                padding: 0;
                list-style-type: none;
            }

            ul li {
                margin-bottom: 8px;
                font-size: 16px;
            }

            .link-container {
                margin-top: 20px;
                text-align: center;
            }

            .link-container a {
                font-size: 16px;
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
                padding: 10px 20px;
                border-radius: 8px;
                background-color: rgba(0, 123, 255, 0.1);
                transition: all 0.3s ease;
            }

            .link-container a:hover {
                background-color: #007bff;
                color: #ffffff;
            }
        </style>
    </head>
    <body>
        <!-- Panel central -->
        <div class="panel-container">
            <h3>¡Gracias por registrarte!</h3>
            <p>Tu información registrada es la siguiente:</p>
            <ul>
                <li>Nombre: <s:property value="personBean.firstName" /></li>
                <li>Apellido Paterno: <s:property value="personBean.lastName" /></li>
                <li>Apellido Materno: <s:property value="personBean.middleName" /></li>
                <li>Fecha de Nacimiento: <s:property value="personBean.dateOfBirth" /></li>
                <li>Lugar de Residencia: <s:property value="personBean.residence" /></li>
                <li>Teléfono: <s:property value="personBean.phone" /></li>
                <li>Correo Electrónico: <s:property value="personBean.email" /></li>
                <li>Edad: <s:property value="personBean.age" /></li>
            </ul>
        </div>

        <!-- Enlace fuera del panel -->
        <div class="link-container">
            <a href="<s:url action='index' />">Volver a la página principal</a>
        </div>
    </body>
</html>
