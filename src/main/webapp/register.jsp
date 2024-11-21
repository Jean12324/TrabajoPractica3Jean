<%-- 
    Document   : register
    Created on : 21 nov 2024, 1:40:54
    Author     : Jeanc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Registro</title>
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
                height: 100vh;
            }
            .form-container {
                width: 50%;
                padding: 20px;
                background: rgba(255, 255, 255, 0.9);
                border-radius: 35px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            }
            h1 {
                text-align: center;
                color: #333333;
            }
            .form-group {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
            }
            .form-group label {
                flex: 1;
                font-weight: bold;
            }
            .form-group input {
                flex: 2;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .error {
                flex: 1;
                color: red;
                font-size: 0.9rem;
            }
            .btn-container {
                text-align: center;
            }
            .btn-container button {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
            }
            .btn-container button:hover {
                background-color: #0056b3;
            }
        </style>
        <!-- Agregar librerías de jQuery y jQuery UI -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
        <script>
            $(document).ready(function () {
                // Inicializar el datepicker
                $("#fechaNacimiento").datepicker({
                    dateFormat: "dd-mm-yy", // Formato de fecha
                    changeMonth: true, // Permite cambiar el mes
                    changeYear: true, // Permite cambiar el año
                    yearRange: "1900:2024" // Rango de años
                });
            });
        </script>
    </head>
    <body>
        <div class="form-container">
            <h1>Por favor, completa el formulario para registrarte.</h1>
            <!-- Formulario Struts -->
            <s:form action="register" method="post" theme="simple">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <s:textfield name="personBean.firstName" id="nombre" />
                    <s:fielderror fieldName="personBean.firstName" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="apellidoPaterno">Apellido Paterno:</label>
                    <s:textfield name="personBean.lastName" id="apellidoPaterno" />
                    <s:fielderror fieldName="personBean.lastName" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="apellidoMaterno">Apellido Materno:</label>
                    <s:textfield name="personBean.middleName" id="apellidoMaterno" />
                    <s:fielderror fieldName="personBean.middleName" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                    <s:textfield name="personBean.dateOfBirth" id="fechaNacimiento" />
                    <s:fielderror fieldName="personBean.dateOfBirth" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="residencia">Lugar de Residencia:</label>
                    <s:textfield name="personBean.residence" id="residencia" />
                    <s:fielderror fieldName="personBean.residence" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono:</label>
                    <s:textfield name="personBean.phone" id="telefono" />
                    <s:fielderror fieldName="personBean.phone" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="correo">Correo Electrónico:</label>
                    <s:textfield name="personBean.email" id="correo" />
                    <s:fielderror fieldName="personBean.email" cssClass="error" />
                </div>
                <div class="form-group">
                    <label for="edad">Edad:</label>
                    <s:textfield name="personBean.age" id="edad" />
                    <s:fielderror fieldName="personBean.age" cssClass="error" />
                </div>
                <div class="btn-container">
                    <s:submit value="Registrar" />
                </div>
            </s:form>
        </div>
    </body>
</html>
