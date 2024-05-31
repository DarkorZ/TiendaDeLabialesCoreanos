<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
    import="com.producto.datos.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Tienda de Labiales - Quito</title>
    <link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>
<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Labiales Coreanos</h1>
    <h2 class="destacado"> Venta de Bálsamos Coreanos</h2>
</header>
<div class="navbar">
    <a href="index.jsp">Inicio</a>
    <% 
        HttpSession currentSession = request.getSession(false); 
        Integer id_perfil = (currentSession != null) ? (Integer) currentSession.getAttribute("perfil") : null;
        String correoUsuario = (currentSession != null) ? (String) currentSession.getAttribute("correo") : "Invitado";

        if (id_perfil != null) { 
    %>
        <a href="consulta.jsp">Ver tonos disponibles</a>
    <% } %>
    
    <a href="Categoria.jsp">Buscar por número de color</a>
    <% 
        if (id_perfil != null && id_perfil == 2) { 
    %>
        <a href="nuevoProducto.jsp">Ingresar un nuevo labial</a>
    <% } %>
    <a href="RegistroP.jsp">Registrar</a>
</div>
<div class="user-info">
  <% if (currentSession != null && correoUsuario != null && !correoUsuario.equals("Invitado")) { %>
      <span>Bienvenido, <%= correoUsuario %></span>
      <a href="cerrarSesion.jsp">Cerrar Sesión</a>
  <% } else { %>
      <span>Bienvenido, Invitado</span>
  <% } %>
</div>
<div class="content">
<section>
<article>
<h1>Catálogo de Productos</h1>
<% if (id_perfil != null && (id_perfil == 2 || correoUsuario.equals("Invitado"))) { 
     Producto producto = new Producto(); %>
<%= producto.consultarTodo(correoUsuario.equals("Invitado")) %>
<% } else { %>
<%-- Si el usuario no tiene perfil o es invitado, muestra la tabla de productos sin permitir modificaciones --%>
<% Producto producto = new Producto(); %>
<%= producto.consultarTodo(true) %>
<% } %>
</article>
</section>

</div>

</main>
</body>
</html>
