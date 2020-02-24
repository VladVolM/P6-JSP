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
    </head>
    <body>
                                <%
                                    response.setContentType("text/html");
                                    String nombre2=null;
			String nombre = request.getParameter("Nombre");
			String apellidos = request.getParameter("Apellidos");
			String saldo = request.getParameter("Saldo");
			String fecha = request.getParameter("Fecha");
                        String errores="NINGUNO";

               fecha.HashMapBase map= (fecha.HashMapBase)request.getAttribute("MAP");         
                        
            if (HashMapBase.getEstado()==false){
                map=new HashMapBase();
                //request.setAttribute("MAP", map);
                errores="MAP NULL";
            }else{
                errores="MAP OK";
                if (nombre!=null){
                    HashMapBase.añadirUsuario(new fecha.SocioDatos(nombre,apellidos,Float.valueOf(saldo),fecha));
                    //request.setAttribute("MAP", map);
                    errores="ADD MAP";
                }
            }
            //String contextPath = request.getContextPath();
            //RequestDispatcher rd = request.getRequestDispatcher("/Web_JSP/web/registro.jsp"); 
            //rd.forward(request, response); 

//String contextPath = request.getContextPath();
//response.sendRedirect(response.encodeRedirectURL("Web/registro.jsp"));
        %>
        
		<h1>JSP Page</h1>
		<jsp:include page="aIncluir.html" flush="false"></jsp:include>
		<%--
		This example uses JSTL, uncomment the taglib directive above.
		To test, display the page like this: index.jsp?sayHello=true&name=Murphy
		--%>
	   hello
           <%= nombre%><%= apellidos%><%= saldo%><%= fecha%>
           <%= errores%><%= map%><%= errores%><%= HashMapBase.getUsuariosBase()%><%= errores%><%= HashMapBase.consegirUsuario(1l)%><%= errores%><%= HashMapBase.consegirUsuario(16l)%>
		<c:if test="${param.sayHello}">
		    <!-- Let's welcome the user ${param.name} -->
		    <p>Hello ${param.name}!</p>
		</c:if>
		<c:choose>
		    <c:when test='${param.name == null}'>
		        <form>
		            <strong>Introduce tu nombre, por favor</strong>
		            <input type=text name="name"/>
		            <input type="hidden" name="sayHello" value="true">               
		            <input type="submit"/>
		        </form>
		    </c:when>
		    <c:otherwise>
		        <p>Hola ${param.name}!</p>
		    </c:otherwise>
		</c:choose>
		
		<p>Con JavaBeans: Pulsa <a href="jspCalendar.jsp">aquí</a> para ver saber en que momento estamos</p>
		<p>Scriptlets (JSP puro): Pulsa <a href="socio.jsp">aquí</a> para probar</p>
		<p>JSTL (JSP taglib prefix="c") : Pulsa <a href="listar2.jsp">aquí</a> para probar</p>

		<div>
			Author: Volodymyr Molchkov Volkogon
			<p>FORMULARIO DE USUARIO tras este apareceran los enlaces a los diferentes apartados</p>

                        

		<%--
 al usar post a esta pagina desde el form
			

${Variable}//forma de poner varuiables 1 fuera de {[(<%%>)]}

<%= Variable %>// forma de poner varuiables 2
			can't use undefined as name
			ADMIN CON ACCESO A TODOS LOS SOCIOS(CON codigo)
		--%>

<%-- buscar en hashmap al usuario 
	si es correcto gurdarlo en el objeto usuario

--%>

<c:choose>
		    <c:when test='${param.Nombre == null}'>
			<form id='conectar' method="post" onsubmit="return true;">
				<fieldset>
					<legend>CONECTAR USUARIO</legend>
					<label class="datos" for="Nombre2">Nombre:</label><input type="text" name="Nombre2" placeholder="Nombre"> 
					</br><button type="submit">Enviar</button><% 
                                            nombre2=request.getParameter("Nombre2");
                                            if (nombre2!=null)
                                            if(!HashMapBase.buscarSocio(nombre2)){
                                                
                            %>***NO EXISTE <%};%>
				</fieldset>
			</form>
                    </c:when>
</c:choose>



			<p>Pagina que se usa para navegar el contenido del HashMap,<br> a este se añade mas contenido a traves del formulario en la página de <a href="registro.jsp">registros</a>.</p>
                        <% 
                                            
                                            if (nombre2!=null || nombre!=null){
                                                
                            %><p>Puedes visualizar todos los usuarios en esta pagina de <a href="socio.jsp">aquí</a>.<br>
			Recuarda que desde este se podra ver con detalle el contenido de cada socio</p> <%};%>
			
		<%--
			send data to next jsp to interpret code
		--%>
	
		</div>
    </body>
</html>
