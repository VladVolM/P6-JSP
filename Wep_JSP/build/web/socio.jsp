<%@page import="fecha.SocioDatos"%>
<%@page contentType="text/html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<% 
fecha.HashMapBase map= new fecha.HashMapBase(false);  



%>
        <h1>Hello World!</h1>

<table>
    <thead class='thead-dark'>
        <tr>
            <th>Código</th>
            <th>Nombre</th>
            <th>Enlace</th>
        </tr>
    </thead>
        <%
            for(java.util.Map.Entry<Long, SocioDatos> socio : map.getUsuariosBase().entrySet()) {
        %>
            <tr>

				<td><%=socio.getKey()%></td>
				<td><%=socio.getValue().getNombre() %></td>
                                <td><a href="calculo.jsp?codigo=<%=socio.getKey()%>">VER</a></td>
            </tr>

        <%
        }
        %>
        </select>
        <br><a href="index.jsp">Volver</a>
    </body>
</html>
