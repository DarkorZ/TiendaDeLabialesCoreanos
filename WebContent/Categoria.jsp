<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categoria</title>
    <link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>

<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Tonos disponibles</h1>
    <h2 class= "destacado"> Inserccion de tonos</h2>
    </header>
    <nav>
        <ul>
         <li><a href="index.jsp">Inicio</a></li>
            <li><a href="consulta.jsp">Ver tonos disponibles</a></li>
            <li><a href="Categoria.jsp">Buscar por número de color</a></li>
            <%-- Verificar si hay una sesión iniciada --%>
            <% if (session.getAttribute("usuario") != null) { %>
                <%-- Verificar si el usuario es administrador --%>
                <% if ("administrador".equals(session.getAttribute("rol"))) { %>
                    <li><a href="eliminarUsuarios.jsp">Eliminar usuarios</a></li>
                    <li><a href="RegistroP.jsp">Registrar Vendedor</a></li> <%-- Nuevo botón para registrar vendedor --%>
                <% } else if ("vendedor".equals(session.getAttribute("rol"))) { %>
                      <% } %>
                <li><a href="cerrarSesion.jsp">Cerrar sesión</a></li>
            <% } else { %>
                <li><a href="login.jsp">Iniciar sesión</a></li>
                <li><a href="RegistroI.jsp">Registrar</a></li> <%-- Botón de registro --%>
            <% } %>
        </ul>
    </nav>
   <div class="content">
   <section>
   <article>
   <h1> Buscar por categoría </h1>
<form action="ReporteCategoria.jsp" method="post" >
<table>
 <tr><td>Escoja la categoria </td><td><select name="cmbCategoria">
                    <option value="1">Tono #01</option>
                    <option value="2">Tono #02</option>
                </select></td></tr>
</table>
 <input type="submit" value="Enviar respuestas">
</form>
   </article>
   </section>
 <aside>
 
   </main>
</body>
</html>
