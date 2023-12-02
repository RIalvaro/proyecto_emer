<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Verificar Conexión a la Base de Datos</title>
</head>
<body>
    <h1>Verificar Conexión a la Base de Datos</h1>
    <form method="post" action="verificar.jsp">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username"><br><br>
        
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password"><br><br>
        
        <input type="submit" value="Verificar Conexión">
    </form>
</body>
</html>
