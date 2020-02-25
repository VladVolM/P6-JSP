<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="Shortcut Icon" href="imagenes/icono.png">
        <style>
            body {
                background-image: linear-gradient(to right,aqua,aquamarine);
            }
            form{
                background-color: rgb(240,240,240);
                border: 2px solid red;
                border-radius: 4px;
                margin: 30px;
            }
            @media only screen and (max-width: 500px){
                input{
                    width:100px;
                }
                legend{
                    font-size: 12px;
                }
            }
        </style>
        <script>
function comprobar(){
	var nombre=document.forms["alta"]["Nombre"].value;
	var apellidos=document.forms["alta"]["Apellidos"].value;
	var saldo=document.forms["alta"]["Saldo"].value;
	var fecha = document.forms["alta"]["Fecha"].value;
        if(nombre == null || nombre == "" || nombre.length == 0  || !/^[a-zA-Z]+$/.test(nombre) || !isNaN(nombre)){
		window.alert('Debe insertar el Nombre(solo letras)');
		return false;
	}
	if(apellidos == null || apellidos == "" || apellidos.length == 0  || !/^[a-zA-Z]+$/.test(apellidos) || !isNaN(apellidos)){
		alert('Debe insertar los Apellidos(solo letras)');
		return false;
	}
	if(saldo == null || saldo == "" || saldo.length == 0 || !/^\d+.?\d?$/.test(saldo)){
		alert('Debe insertar un Saldo(numeros, la coma se ignora, solo punto)');
		return false;
	}

	if(fecha == null || fecha == "" || fecha.length == 0|| !/^[12][90][0-9][0-9][/](0[1-9]|1[0-2])+[/](0[1-9]|1[0-9]|2[0-9]|3[01])+$/.test(fecha) ){
		alert("Debe insertar Fecha(YYYY/MM/DD ej 2000/01/03)");
		return false;					
	}
	alert("Correcto");
        return true;
        //&nbsp;
}
</script>
    </head>
    <body>
        <%@page language="java" import="java.util.*" %>
        <jsp:useBean id="clock" class="fecha.JspCalendar" />
        <h1>Formulario</h1>
        <form id='alta' onsubmit="return comprobar()"  method="post"  action='index.jsp'>
            <fieldset>
                <legend>CONECTAR USUARIO</legend>
                <label class="datos" for="fechaAhora"><%= clock.getYear()%>/<%= clock.getMonthInt()%>/<%= clock.getDayOfMonth()%></label>
                <br><label class="datos" for="Nombre">Nombre:<input type="text" name="Nombre" placeholder="Nombre"></label> 
                <br><label class="datos" for="Apellidos" >Apellidos:<input type="text" name="Apellidos" placeholder="Apellidos"> </label>
                <br><label class="datos" for="Saldo" >Saldo:<input type="text" name="Saldo" placeholder="Saldo"></label>
                <br><label class="datos" for="Fecha">Fecha:<input type="date" min='1800-01-01' max='2020-06-01' name="Fecha" placeholder="YYYY/MM/DD"></label>
                <br><button type="submit">Enviar</button>
            </fieldset>
	</form>	
        <a href="index.jsp">Volver</a>
    </body>
</html>