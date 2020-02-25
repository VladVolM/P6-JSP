<%@page import="java.util.GregorianCalendar"%>
<%@page import="fecha.*"%>
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
            form{
                background-color: rgb(240,240,240);
                border: 2px solid red;
                border-radius: 4px;
                width: 40%
            }
            #res{
                border: 2px solid black;
                border-radius: 4px;
            }
            @media only screen and (max-width: 900px){
                form{
                    width: 100%
                }
                input{
                    width:60%;
                }
            }
        </style>
    </head>
    <body>
        <%
            response.setContentType("text/html");
            String nombre2=request.getParameter("Nombre2");;
            String nombre = request.getParameter("Nombre");
            String apellidos = request.getParameter("Apellidos");
            String saldo = request.getParameter("Saldo");
            String fecha = request.getParameter("Fecha");
            fecha.HashMapBase map;         
                        
            if (HashMapBase.getEstado()==false){
                map=new HashMapBase();
            }else{
                if (nombre!=null){
                    HashMapBase.añadirUsuario(new fecha.SocioDatos(nombre,apellidos,Float.valueOf(saldo),fecha));
                }
            }
        %>
	<h1>Inicio</h1>
	<section>
            <jsp:include page="aIncluir.html" flush="false"></jsp:include>
            <c:choose>
		<c:when test='${param.Nombre == null && param.Buscar==null && param.Nombre2==null}'>
                    <form id='conectar' method="post" onsubmit="return true;">
			<fieldset>
                            <legend>CONECTAR USUARIO</legend> 
                            <label class="datos" for="Nombre2">Nombre:</label><input type="text" name="Nombre2" placeholder="Nombre"> 
                            <br><button type="submit">Enviar</button>
                            <% 
                                nombre2=request.getParameter("Nombre2");
                                if (nombre2!=null)
                                    if(!HashMapBase.buscarSocio(nombre2)){
                            %>
                                ***NO EXISTE <input type="hidden" name="Buscar" value="0">
                            <%}else{
                            %>
                                <input type="hidden" name="Buscar" value="1">
                            <%};
                            %>
			</fieldset>
                    </form>
                </c:when>
            </c:choose>
            <p>Pagina que se usa para añadir mas contenido al HachMap a traves del formulario en la página de <a href="registro.jsp">registros</a>.</p>
            <c:choose>
		<c:when test='${param.Buscar==1 || param.Nombre != null || param.Nombre2!=null}'>
                    <p id="res">
                        Puedes visualizar todos los usuarios en esta pagina de <a href="socio.jsp">aquí</a>.<br>
                        Recuarda que desde este se podra ver con detalle el contenido de cada socio.
                    </p> 
                </c:when>
            </c:choose>
        </section>
    </body>
</html>
