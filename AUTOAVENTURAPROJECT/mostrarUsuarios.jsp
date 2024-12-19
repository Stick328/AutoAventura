<%-- 
    Document   : mostrarUsuarios
    Created on : 18 dic. 2024, 18:54:22
    Author     : SANTIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%@ page import= "logica.Usuario" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        <% 
            List<Usuario> listaUsuarios = (List) request.getSession() .getAttribute("listaUsuarios");
            int cont = 1;
            for (Usuario usu : listaUsuarios){
            
            
            %>
            
            
            <p><b>Lista de cliente <%=cont%></b></p>
            <p>Dni:<%=usu.getDni()%></p>
            <p>Nombre:<%=usu.getNombre()%></p>
            <p>Apellido<%=usu.getApellido()%></p>
            <p>Telefono<%=usu.getTelefono()%></p>
            <p>----------------------------------------------</p>
            <% cont = cont+1; %>
            <%}  %>
    </body>
</html>
