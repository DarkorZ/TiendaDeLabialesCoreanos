<%@ page import="com.productos.negocio.Producto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>

<%
    // Obtener el parámetro id_cat del formulario
    int id_cat = Integer.parseInt(request.getParameter("id_cat"));
    // Obtener el parámetro cantidad_pr del formulario
    int cantidad_pr = Integer.parseInt(request.getParameter("cantidad_pr"));

    // Crear un mapa para almacenar los productos seleccionados
    Map<Integer, Integer> carrito = (Map<Integer, Integer>) session.getAttribute("carrito");
    if (carrito == null) {
        carrito = new HashMap<>();
        session.setAttribute("carrito", carrito);
    }

    // Agregar el producto seleccionado al carrito
    carrito.put(id_cat, cantidad_pr);
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
</head>
<body>
    <h1>Carrito de Compras</h1>
    <form action="RealizarCompra.jsp" method="post">
        <label for="labial">Labial número:</label>
        <input type="text" id="labial" name="labial" value="<%= id_cat %>" readonly><br><br>
        <label for="cantidad">Cantidad:</label>
        <input type="text" id="cantidad" name="cantidad" value="<%= cantidad_pr %>" readonly><br><br>
        <button type="submit">Comprar</button>
    </form>
</body>
</html>
