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
    <h1 class="titulo">Registro de Nuevo Vendedor o Admin</h1> 
</header>

<main>
    <form action="registroUsuario.jsp" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>

        <label for="cedula">C�dula:</label>
        <input type="text" id="cedula" name="cedula" required><br>

        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo" required><br>

        <label for="clave">Clave:</label>
        <input type="password" id="clave" name="clave" required><br>

        <label for="perfil">Perfil:</label>
        <select id="perfil" name="perfil" required>
            <option value="1">Administrador</option>
            <option value="2">Vendedor</option>
        </select><br>

        <input type="submit" value="Registrarse">
    </form>
</main>

</body>
</html>
