<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*, com.producto.datos.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gesti�n de Productos</title>
    <link rel="stylesheet" type="text/css" href="tu_estilo.css">
</head>
<body>
<main>
<header>
    <h1>Gesti�n de Productos</h1>
</header>
<div class="navbar">
    <a href="index.jsp">Inicio</a>
    <a href="consulta.jsp">Ver Productos</a>
    <a href="login.jsp">Iniciar Sesi�n</a>
    <a href="Categoria.jsp">Buscar por categor�a</a>
</div>
<div class="content">
    <section>
        <h2>Registrar Producto</h2>
        <!-- Formulario para registrar un nuevo producto -->
        <form action="RegistrarProductoServlet" method="post">
             <a href="nuevoProducto.jsp">Ir a Nuevo Producto</a>
        </form>
    </section>
    <section>
        <h2>Modificar Producto</h2>
        <!-- Formulario para modificar un producto existente -->
        <form action="ModificarProductoServlet" method="post">
            <!-- Campo para seleccionar el producto a modificar -->
            <!-- Campos del formulario para modificar producto -->
            <!-- Por ejemplo: Nombre, Descripci�n, Precio, etc. -->
        </form>
    </section>
    <section>
        <h2>Eliminar Producto</h2>
        <!-- Formulario para eliminar un producto existente -->
        <form action="EliminarProductoServlet" method="post">
            <!-- Campo para seleccionar el producto a eliminar -->
        </form>
    </section>
    <section>
        <h2>Consultar Productos</h2>
        <!-- Aqu� puedes utilizar la misma l�gica de tu consulta.jsp -->
        <!-- Mostrar la tabla de productos con opci�n de filtrar, si es necesario -->
    </section>
</div>
<footer>
    <ul>
        <li>Facebook</li>
        <li>Instagram</li>
        <li>Twitter</li>
    </ul>
</footer>
</main>
</body>
</html>
