<%-- 
    Document   : inicio_sesion
    Created on : 8/10/2024, 5:18:41 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro e Inicio de Sesión</title>
    <style>
        /* Estilos generales */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #94688d; /* Color de fondo del formulario */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #440436; /* Color del texto del título */
        }

        .form-group {
            margin-bottom: 10px;
        }

        label {
            font-weight: bold;
            color: #fff;
        }

        input, select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        button {
            padding: 10px;
            background-color: #440436;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #5a0645;
        }

        .toggle-link {
            color: #440436;
            cursor: pointer;
            text-align: center;
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Formulario de Inicio de Sesión (se muestra por defecto) -->
        <div id="login-form" class="form-section">
            <h2>Inicio de Sesión</h2>
            <form action="UserServlet" method="post">
                <!-- Campo oculto para identificar la acción (inicio de sesión) -->
                <input type="hidden" name="action" value="login">

                <div class="form-group">
                    <label for="email-login">Correo Electrónico:</label>
                    <input type="email" id="email-login" name="email" required>
                </div>

                <div class="form-group">
                    <label for="password-login">Contraseña:</label>
                    <input type="password" id="password-login" name="password" required>
                </div>

                <button type="submit" class="login-btn">Iniciar Sesión</button>
            </form>
            <a class="toggle-link" onclick="toggleForms()">¿No tienes cuenta? Regístrate aquí</a>
        </div>

        <!-- Formulario de Registro (inicialmente oculto) -->
        <div id="register-form" class="form-section" style="display: none;">
            <h2>Registro de Usuario</h2>
            <form action="UserServlet" method="post">
                <!-- Campo oculto para identificar la acción (registro) -->
                <input type="hidden" name="action" value="register">
                
                <div class="form-group">
                    <label for="nombres">Nombres:</label>
                    <input type="text" id="nombres" name="nombres" required>
                </div>

                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input type="text" id="apellidos" name="apellidos" required>
                </div>

                <div class="form-group">
                    <label for="tipo-cedula">Tipo de Cédula:</label>
                    <select id="tipo-cedula" name="tipo-cedula" required>
                        <option value="CC">Cédula de Ciudadanía</option>
                        <option value="TI">Tarjeta de Identidad</option>
                        <option value="CE">Cédula de Extranjería</option>
                        <option value="PAS">Pasaporte</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" required>
                </div>

                <div class="form-group">
                    <label for="fecha-nacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" required>
                </div>

                <div class="form-group">
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="direccion">Dirección:</label>
                    <input type="text" id="direccion" name="direccion" required>
                </div>

                <div class="form-group">
                    <label for="telefono">Teléfono:</label>
                    <input type="tel" id="telefono" name="telefono" required>
                </div>

                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                </div>

                <div class="form-group">
                    <label for="confirm-password">Confirmar Contraseña:</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>
                </div>

                <button type="submit" class="register-btn">Completar Registro</button>
            </form>
            <a class="toggle-link" onclick="toggleForms()">¿Ya tienes cuenta? Inicia sesión aquí</a>
        </div>
    </div>

    <script>
        // Función para alternar entre el formulario de inicio de sesión y el formulario de registro
        function toggleForms() {
            var loginForm = document.getElementById("login-form");
            var registerForm = document.getElementById("register-form");

            if (loginForm.style.display === "none") {
                loginForm.style.display = "block";
                registerForm.style.display = "none";
            } else {
                loginForm.style.display = "none";
                registerForm.style.display = "block";
            }
        }
    </script>
</body>
</html>
