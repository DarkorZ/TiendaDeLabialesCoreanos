<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Labiales de Gelatina</title>
    <link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>
<body><header>
<img src="https://img.freepik.com/vector-premium/plantilla-diseno-logotipo-cosmeticos-beso-lapiz-labial-marca-o-empresa-otros_565941-718.jpg" alt="Logo" width="100" height="100">
 
    <h1 class="titulo"> Tienda de Labiales</h1> 
     <% if (session.getAttribute("usuario") == null) { %>
        <h2 class="bienvenida">Bienvenido Invitado</h2>
    <% } %>
    <h2 class="destacado">Bálsamos de moda sostenible</h2>
       <h4 id="favorito">Compra de manera consciente</h4>
    <nav>
        <ul>
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
</header>

<section>
    <h3>Nuestro Objetivo</h3>
    <p>Este emprendimiento cuenta con labiales únicos en el país, exportados de Corea.</p>
    <%-- Mostrar el nombre de usuario y correo si está iniciada la sesión --%>
    <% if (session.getAttribute("usuario") != null) { %>
        <h3>Bienvenido, <%= session.getAttribute("usuario") %></h3>
        <p>Correo electrónico: <%= session.getAttribute("correo") %></p>
    <% } %>
</section>

<div class="carousel-container">
    <input type="radio" name="carousel" id="slide1" checked>
    <input type="radio" name="carousel" id="slide2">
    <input type="radio" name="carousel" id="slide3">
    <input type="radio" name="carousel" id="slide4">
    
    <div class="carousel-slide">
        <a href="https://example.com/page1">
            <img src="https://i.pinimg.com/736x/14/07/81/1407818dabf64626a24db0f2eb9eb8b1.jpg" alt="ImgLabiales01"/>
        </a>
        <a href="https://example.com/page2">
            <img src="https://img.ltwebstatic.com/images3_spmp/2023/07/23/1690117023da6b4dbb623ecf23842cdc391a2c1be0_thumbnail_600x.jpg" alt="ImgLabiales02"/>
        </a>
        <a href="https://example.com/page3">
            <img src="https://i.pinimg.com/736x/1d/14/21/1d14210a9d5f8761899e3aa8fe647ca6.jpg" alt="ImgLabiales03"/>
        </a>
        <a href="https://example.com/page4">
            <img src="https://th.bing.com/th/id/OIP.x93VqPLimf81TLMasU7m4QHaJ3?rs=1&pid=ImgDetMain" alt="ImgLabiales04"/>
        </a>
        <a href="https://example.com/page5">
            <img src="https://img.ltwebstatic.com/images3_spmp/2023/06/25/168766523917a753309d3a97de0bcf772e0f1b2bc6_thumbnail_600x.jpg" alt="ImgLabiales05"/>
        </a>
        <a href="https://example.com/page6">
            <img src="https://cbu01.alicdn.com/img/ibank/O1CN014U9kZK1UKaaMBTMlg_!!989962499-0-cib.310x310.jpg" alt="ImgLabiales06"/>
        </a>
        <a href="https://example.com/page7">
            <img src="https://ladeh.com.bd/public/uploads/all/EMBEhGtoLcOUqiuIylbqZmLjjjcOIfd9Jdf8xgyh.png" alt="ImgLabiales07"/>
        </a>
    </div>
    
     <div class="carousel-navigation">
        <label for="slide1">1</label>
        <label for="slide2">2</label>
        <label for="slide3">3</label>
        <label for="slide4">4</label>
        
    </div>
</div>

<footer>
    <p>Conéctate con nosotros en:</p>
   
    <a href="https://www.linkedin.com/in/john-serrano-9b3044311/" target="_blank">LinkedIn</a>
</footer>

</body>
</html>
