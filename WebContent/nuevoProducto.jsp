<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link rel="stylesheet" type="text/css" href="stiloIndex.css">
   <nav>
        <ul>
            <li><a href="consulta.jsp">Ver tonos disponibles</a></li>
            <li><a href="Categoria.jsp">Buscar por n�mero de color</a></li>
             <li><a href="index.jsp">HOME</a></li>
            <%-- Verificar si hay una sesi�n iniciada --%>
            <% if (session.getAttribute("usuario") != null) { %>
                <%-- Verificar si el usuario es administrador --%>
                <% if ("administrador".equals(session.getAttribute("rol"))) { %>
                    <li><a href="eliminarUsuarios.jsp">Eliminar usuarios</a></li>
                    <li><a href="RegistroP.jsp">Registrar Vendedor</a></li> <%-- Nuevo bot�n para registrar vendedor --%>
                <% } else if ("vendedor".equals(session.getAttribute("rol"))) { %>
                      <% } %>
                <li><a href="cerrarSesion.jsp">Cerrar sesi�n</a></li>
            <% } else { %>
                <li><a href="login.jsp">Iniciar sesi�n</a></li>
                <li><a href="RegistroI.jsp">Registrar</a></li> <%-- Bot�n de registro --%>
            <% } %>
        </ul>
    </nav>
</head>
<body>
    <form action="Registro.jsp" method="post">
        <label for="code">C�digo:</label>
        <input type="text" id="code" name="code" value="0" readonly><br>	

        <label for="category">Categor�a:</label>
        <input type="text" id="category" name="category" value="0"><br>

        <label for="name">Nombre:</label>
        <input type="text" id="name" name="name" value="Labial"><br>

        <label for="quantity">Cantidad:</label>
        <input type="number" id="quantity" name="quantity" value="6"><br>

        <label for="price">Precio:</label>
        <input type="text" id="price" name="price" value="0"><br>
        
      

        
	
        <button type="submit" onclick="submitFormAndRedirect()">Enviar consulta</button>
        <button type="reset">Restablecer</button>
    </form>
</body>
</html>