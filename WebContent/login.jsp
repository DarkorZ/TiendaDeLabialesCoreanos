<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
     <link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>
<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Login tienda de labiales</h1>
    <h2 class="destacado">Labiales de Gelatina Coreanos</h2>
</header>
<div class="navbar">
  <a href="index.jsp">Inicio</a>
  <a href="consulta.jsp">Ver Producto</a>
  <a href="login.jsp">Iniciar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
</div>
<div class="content">
<section>
<article>
<% String error = request.getParameter("error"); 
   if (error != null) { %>
   <p style="color:red;"><%= error %></p>
<% } %>
<form action="verificarLogin.jsp" method="post">
    <table>
        <tr><td>Usuario</td><td> <input type="text" name="txtUsuario" required />*</td></tr>
        <tr><td>Clave</td><td> <input type="password" name="txtClave" required />*</td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
</form>

</article>
</section>

</main>
</body>
</html>
