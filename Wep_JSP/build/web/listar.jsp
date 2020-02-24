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
        <h1>Hello World!</h1>
        <%!Map<String, String> foods = new HashMap<String, String>();
        %>
        <%
            foods.put("man", "mango");
            foods.put("app", "apple");
            foods.put("gra", "grapes");
            foods.put("car", "carrotsCarrot");
            foods.put("asp", "asparagus");
            foods.put("ban", "bananaBanana");
        %>
        <select id="food" name="fooditems">
        <%
            for(java.util.Map.Entry<String, String> food : foods.entrySet()) {
        %>
                <option value="<%=food.getKey()%>">
                <%=food.getValue() %>
            </option>

        <%
        }
        %>
        </select>
        
    </body>
</html>
