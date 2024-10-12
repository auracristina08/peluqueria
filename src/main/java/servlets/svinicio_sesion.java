/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aurcr
 */
// Definir la URL del servlet
@WebServlet("/UserServlet")
public class svinicio_sesion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if ("register".equals(action)) {
            // Procesar el registro
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            String tipoCedula = request.getParameter("tipo-cedula");
            String cedula = request.getParameter("cedula");
            String fechaNacimiento = request.getParameter("fecha-nacimiento");
            String email = request.getParameter("email");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirm-password");

            if (!password.equals(confirmPassword)) {
                out.println("<html><body>");
                out.println("<h2>Error: Las contraseñas no coinciden</h2>");
                out.println("</body></html>");
            } else {
                // Aquí iría la lógica para registrar al usuario en la base de datos
                out.println("<html><body>");
                out.println("<h2>Registro exitoso</h2>");
                out.println("</body></html>");
            }

        } else if ("login".equals(action)) {
            // Procesar el inicio de sesión
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Aquí iría la lógica para validar el inicio de sesión
            out.println("<html><body>");
            out.println("<h2>Inicio de sesión exitoso</h2>");
            out.println("</body></html>");
        }
    }
}
