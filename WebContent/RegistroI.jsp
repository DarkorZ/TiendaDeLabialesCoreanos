<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registro de Usuario</title>
<link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>
<body>

<header>
    <h1 class="titulo">Registro de Invitado a Cliente</h1> 
</header>

<main>
    <form action="registroInvitado.jsp" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>

        <label for="cedula">Cédula:</label>
        <input type="text" id="cedula" name="cedula" required><br>

        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo" required><br>

        <label for="clave">Clave:</label>
        <input type="password" id="clave" name="clave" required><br>

        <input type="hidden" id="perfil" name="perfil" value="3"> <%-- Valor fijo de perfil --%>

        <input type="submit" value="Registrarse">
    </form>
</main>

</body>
</html>
