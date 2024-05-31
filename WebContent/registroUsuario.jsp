	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.producto.datos.Usuario"%>
	<!DOCTYPE html>
	<html lang="es">
	<head>
	    <meta charset="ISO-8859-1">
	    <title>Registro de Usuario</title>
	</head>
	<body>
	    <h1>Resultado del Registro</h1>
	    <%
	        String nombre = request.getParameter("nombre");
	        String cedula = request.getParameter("cedula");
	        String correo = request.getParameter("correo");
	        String clave = request.getParameter("clave");
	        int perfil = Integer.parseInt(request.getParameter("perfil"));
	        
	        Usuario usuario = new Usuario();
	        usuario.setNombre(nombre);
	        usuario.setCedula(cedula);
	        usuario.setCorreo(correo);
	        usuario.setClave(clave);
	        usuario.setEstado(1); // Por defecto, se asume que el estado es 1 (activo)
	        usuario.setId_perfil(perfil);
	
	        String resultado = usuario.ingresarCliente();
	        out.println("<p>" + resultado + "</p>");
	    %>
	    <a href="index.jsp">Volver al inicio</a>
	</body>
	</html>
