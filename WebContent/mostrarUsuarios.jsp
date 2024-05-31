<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, com.producto.datos.Conexion"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Usuarios</title>
  <link rel="stylesheet" type="text/css" href="stiloIndex.css">
</head>
<body>
<%
    Conexion conexion = new Conexion();
    ResultSet rs = null;
    String query = "SELECT * FROM tb_usuario";

    try {
        rs = conexion.Consulta(query);
%>
        <h1>Lista de Usuarios</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Perfil</th>
                <th>Estado</th>
                <th>Nombre</th>
                <th>Cédula</th>
                <th>Correo</th>
                <th>Clave</th>
            </tr>
<%
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
            </tr>
<%
        }
%>
        </table>
<%
    } catch (SQLException e) {
        out.println("Error al obtener los usuarios: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            conexion.getConexion().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
