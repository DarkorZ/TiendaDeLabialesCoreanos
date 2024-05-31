<!DOCTYPE html>
<html>
<head>
    <title>Eliminar Usuario</title>
</head>
<body>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
    <%@ page import="com.producto.datos.Conexion" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.SQLException" %>
    <%
        // Obtener el ID del usuario a eliminar desde el parámetro de solicitud
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));

        // Realizar la eliminación del usuario en la base de datos
        Conexion conexion = new Conexion();
        PreparedStatement pstmt = null;
        String deleteQuery = "DELETE FROM tb_usuario WHERE id_us = ?";

        try {
            pstmt = conexion.getConexion().prepareStatement(deleteQuery);
            pstmt.setInt(1, idUsuario);
            int rowsAffected = pstmt.executeUpdate();

            // Comprobar si se eliminó correctamente el usuario
            if (rowsAffected > 0) {
                out.println("<p>Usuario eliminado correctamente.</p>");

            } else {
                out.println("<p>Error al eliminar el usuario.</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error al eliminar el usuario: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                conexion.getConexion().close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
    <a href="index.jsp"><button>Volver a index.jsp</button></a>
</body>
</html>
