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
    </head>
    <body>
        <%@page language="java" import="java.util.*" %>
        <jsp:useBean id="clock" class="fecha.JspCalendar" />
<%
/*
    request.setAttribute("MAP", request.getAttribute("MAP"));
RequestDispatcher rd =  
             request.getRequestDispatcher("index.jsp"); 
  
          rd.forward(request, response); */
%>
        <UL>
            <LI>Día: <%= clock.getDayOfMonth()%>
            <LI>Mes: <%= clock.getMonthInt()%>
            <LI>Año: <%= clock.getYear()%>
        </UL>
        <%-- Check for AM or PM --%>
        <%! int time = Calendar.getInstance().get(Calendar.AM_PM);
     %>
        <%
            if (time == Calendar.AM) {
        %>
        Buenos días
        <%
        } else {
        %>
        Buenas tardes
        <%
            }
        %>
        <%--
        <%@ include file="copyright.html" %>
        --%>
		<h1>JSP Page</h1>
		<div>
			<form id='alta' action='index.jsp' method="post">
				<fieldset>
					<legend>CONECTAR USUARIO</legend>
					<label class="datos" for="Nombre">Nombre:</label><input type="text" name="Nombre" placeholder="Nombre"> 

				</br><label class="datos" for="Apellidos" >Apellidos:</label><input type="text" name="Apellidos" placeholder="Apellidos"> 

				</br><label class="datos" for="Saldo" >Saldo:</label><input type="text" name="Saldo" placeholder="Saldo">

				</br><label class="datos" for="Fecha">Fecha:</label><input type="date" min='1800-01-01' max='2020-06-01' name="Fecha"> 

					</br><button type="submit">Enviar</button>
				</fieldset>
			</form>	
		</div>
                <a href="index.jsp">Volver</a>
    </body>
</html>
