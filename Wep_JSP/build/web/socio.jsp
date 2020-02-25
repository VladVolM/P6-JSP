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
        <link rel="Shortcut Icon" href="imagenes/icono.png">
        <style>
            body {
                background-image: linear-gradient(to right,aqua,aquamarine);
            }
            section {
                margin: 30px;
                width: 90%;
            }
            table {
                width: 90%;
            }
            th{
                background-color: rgb(200,200,200);
            }

            table, th, td {
                border: 1px solid black;
            }
            tr {
                text-align: center;
                background-color: white;
            }
            img{
                display: block;
                margin-left: auto;
                margin-right: auto;
                margin-bottom: 10px;
                margin-top: 10px;
            }
            @media only screen and (max-width: 900px){
                section{
                    font-size: 10px;
                }
            }
        </style>
    </head>
    <body>
<% 
fecha.HashMapBase map= new fecha.HashMapBase(false);  

int color=1;
String back;

%>
        <h1>Lista de <%= map.getContador()-1%> socios</h1>

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
                if (color==1){
                    color=2;
                    back="240,240,240";
                }else{
                    color=1;
                    back="255,255,255";
                }
        %>
            <tr style="background-color: rgb(<%= back %>)">

				<td><%=socio.getKey()%></td>
				<td><%=socio.getValue().getNombre() %></td>
                                <td><a href="calculo.jsp?codigo=<%=socio.getKey()%>">VER</a></td>
            </tr>

        <%
        }
        %>
</table>
        <br><a href="index.jsp">Volver</a>
    </body>
</html>
