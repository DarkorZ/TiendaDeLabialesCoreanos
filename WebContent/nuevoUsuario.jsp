<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
</head>
<body>
    <form action="registroUsuario.jsp" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br>

        <label for="cedula">Cédula:</label>
        <input type="text" id="cedula" name="cedula"><br>

        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo"><br>

        <label for="clave">Clave:</label>
        <input type="password" id="clave" name="clave"><br>

        <label for="perfil">Perfil:</label>
        <select id="perfil" name="perfil">
            <option value="1">Administrador</option>
            <option value="2">Vendedor</option>
        </select><br>

        <button type="submit">Registrar</button>
        <button type="reset">Restablecer</button>
    </form>
</body>
</html>
