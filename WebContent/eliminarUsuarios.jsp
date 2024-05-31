<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.producto.datos.Conexion" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Usuarios</title>
</head>
<body>
    <h1>Eliminar Usuarios</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Perfil</th>
            <th>Estado</th>
            <th>Nombre</th>
            <th>Cédula</th>
            <th>Correo</th>
            <th>Clave</th>
            <th>Acción</th>
        </tr>
        <%
            Conexion conexion = new Conexion();
            ResultSet rs = null;
            String query = "SELECT * FROM tb_usuario";
            try {
                rs = conexion.Consulta(query);
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getInt("id_us") %></td>
                        <td><%= rs.getInt("id_per") %></td>
                        <td><%= rs.getInt("id_est") %></td>
                        <td><%= rs.getString("nombre_us") %></td>
                        <td><%= rs.getString("cedula_us") %></td>
                        <td><%= rs.getString("correo_us") %></td>
                        <td><%= rs.getString("clave_us") %></td>
                        <td>
                            <form action="eliminarUsuario.jsp" method="post">
                                <input type="hidden" name="idUsuario" value="<%= rs.getInt("id_us") %>">
                                <input type="submit" value="Eliminar">
                            </form>
                        </td>
                    </tr>
        <%
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) rs.close();
                    conexion.getConexion().close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
</body>
</html>
