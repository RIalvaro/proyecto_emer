<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
    <h1>Resultado de la Verificación</h1>
    <% 
        String usuario = request.getParameter("username");
        String contrasena = request.getParameter("password");
        
        try {
            // Establecer conexión con la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/notas_edu";
            Connection conn = DriverManager.getConnection(url, usuario, contrasena);
            
            // Si la conexión se establece correctamente
            out.println("Conexión exitosa a la base de datos con el usuario: " + usuario);
            
            // Cerrar la conexión
            conn.close();
        } catch (Exception e) {
            // Si ocurre algún error en la conexión
            out.println("Error al intentar conectar a la base de datos: " + e.getMessage());
        }
    %>
</body>
</html>
