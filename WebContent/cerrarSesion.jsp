<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // No es necesario declarar expl�citamente la variable `session` porque ya est� impl�citamente disponible en JSP.
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp");
%>
