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
Aries 			19 April – 13 May 
Taurus 			14 May – 19 June 
Gemini 			20 June – 20 July 
Cancer 			21 July – 9 August 
Leo 			10 August – 15 September 
Virgo 			16 September – 30 October 
Libra 			31 October – 22 November 
Scorpius 		23 November – 29 November 
Ophiuchus 		30 November – 17 December 
Sagittarius             18 December – 18 January 
Capricornus             19 January – 15 February 
Aquarius 		16 February – 11 March
Pisces 			12 March – 18 April 

		<div>
                    <%
                        String codigo= request.getParameter("codigo");
                        fecha.SocioDatos socio = fecha.HashMapBase.consegirUsuario(Long.valueOf(codigo));
                        String fecha=socio.getNacimiento();
                        int año,mes,dia,zodiac=0;
                        año=Integer.valueOf(fecha.substring(0, 4));
                        mes=Integer.valueOf(fecha.substring(5, 7));
                        dia=Integer.valueOf(fecha.substring(8, 10));
                        if (mes<=6){
                            if(mes<=3){
                                if(mes==1){
                                    if (dia<19)
                                        zodiac=10;
                                    else
                                        zodiac=11;
                                }else{
                                    if(mes==2){
                                        if (dia<16)
                                        zodiac=11;
                                    else
                                        zodiac=12;
                                    }else{
                                        if (dia<12)
                                        zodiac=12;
                                    else
                                        zodiac=13;
                                    }
                                }
                            }else{
                                if(mes==4){
                                    if (dia<19)
                                        zodiac=13;
                                    else
                                        zodiac=1;
                                }else{
                                    if(mes==5){
                                        if (dia<14)
                                        zodiac=1;
                                    else
                                        zodiac=2;
                                    }else{
                                        if (dia<20)
                                        zodiac=2;
                                    else
                                        zodiac=3;
                                    }
                                }
                            }
                        }else{
                            if(mes<=9){
                                if(mes==7){
                                    if (dia<21)
                                        zodiac=3;
                                    else
                                        zodiac=4;
                                }else{
                                    if(mes==8){
                                        if (dia<23)
                                        zodiac=4;
                                    else
                                        if (dia<30)
                                            zodiac=5;
                                        else
                                            zodiac=6;
                                    }
                                }
                            }else{
                                if(mes==10){
                                    if (dia<31)
                                        zodiac=6;
                                    else
                                        zodiac=7;
                                }else{
                                    if(mes==11){

                                        if (dia<19)
                                            zodiac=7;
                                        else
                                            zodiac=8;
                                        if (dia<19)
                                            zodiac=8;
                                        else
                                            zodiac=9;

                                    }else{
                                        if (dia<18)
                                        zodiac=9;
                                    else
                                        zodiac=10;
                                    }
                                }
                            }
                        }
                    %>
                    <%= socio.getNombre() %><%= socio.getApellidos() %><%= socio.getSaldo() %><%= fecha %>/<%= año %>/<%= mes %>/<%= dia %>////<%= zodiac %>////
                    <img htrf=""></img>
$StringBirth=fgets($myfile);//guardar fecha
									$PresentDay=date("Y-m-d");
									$dif = (int)substr($PresentDay,0,4)-(int)substr($StringBirth,0,4);
									if ((int)substr($PresentDay,5,2)>=(int)substr($StringBirth,5,2)){
										if (!(int)substr($PresentDay,8)>=(int)substr($StringBirth,8))
											$dif-=1;
									}else
										$dif-=1;

									echo $dif ;//poner edad
		</div>
                    <a href="socio.jsp">Volver</a>
    </body>
</html>















