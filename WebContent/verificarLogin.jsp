<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.producto.datos.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verificaci�n de Login</title>
</head>
<body>
<%
Usuario usuario = new Usuario();
String nlogin = request.getParameter("txtUsuario");
String nclave = request.getParameter("txtClave");
HttpSession sesion = request.getSession(); // Se crea la variable de sesi�n
boolean respuesta = usuario.verificarUsuario(nlogin, nclave);
if (respuesta) {
    sesion.setAttribute("usuario", usuario.getNombre());
    System.out.println("Nombre de usuario establecido en la sesi�n: " + usuario.getNombre());
    sesion.setAttribute("correo", usuario.getCorreo());
    System.out.println("Correo electr�nico establecido en la sesi�n: " + usuario.getCorreo());
    int idPerfil = usuario.getId_perfil();
    sesion.setAttribute("perfil", idPerfil);
    System.out.println("Perfil de usuario establecido en la sesi�n: " + idPerfil);
    // Verificar si el usuario es administrador
    if (idPerfil == 1) {
        sesion.setAttribute("rol", "administrador");
        System.out.println("Rol de administrador establecido en la sesi�n.");
    }
    // Verificar si el usuario es vendedor
    else if (idPerfil == 2) {
        sesion.setAttribute("rol", "vendedor");
        System.out.println("Rol de vendedor establecido en la sesi�n.");
    }
    response.sendRedirect("index.jsp");
} else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
</jsp:forward>
<%
}
%>

</body>
</html>
