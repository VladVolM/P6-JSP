<%--
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
--%>


<HTML>
<%@page language="java" import="java.util.*" %>
<H1>Bienvenido a JSPCalendar</H1>

<P>Hoy es</P>
<jsp:useBean id="clock" class="fecha.JspCalendar" />

<UL>
<LI>Día: <%= clock.getDayOfMonth() %>
<LI>Mes: <%= clock.getMonthInt() %>
<LI>Año: <%= clock.getYear() %>
</UL>
<%-- Check for AM or PM --%>
<%! int time = Calendar.getInstance().get(Calendar.AM_PM); %>
<%
if (time == Calendar.AM) {
%>
Buenos días
<%
}
else {
%>
Buenas tardes
<%
}
%>
<%--
<%@ include file="copyright.html" %>
--%>
</HTML> 
