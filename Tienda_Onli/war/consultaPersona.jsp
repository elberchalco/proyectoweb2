<%@page import="tienda.online.*" %>
<%@page import="java.util.*"%>
<%
List<Persona> apell =PersonaUtil.todosPersonas();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="CSS/consultaP.css" rel="stylesheet" type="text/css" />
  <style> 
  table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th	{
    background-color: black;
    color: white;
}
</style>
 </head>
 <body>
<table id="t01">
  <tr>
    <th>NOMBRES </th>
    <th>APELLIDO</th>		
    <th>CLAVE</th>
    <th>USUARIO</th>
    <th></th>
  </tr>
  
<%
 for (int idx = 0; idx < apell.size(); idx++) {
     Persona t = (Persona)apell.get(idx);
%>
   <tr>
    <td><%=t.getNombre() %></td>
    <td><%=t.getApellido() %></td>
    <td><%=t.getClave() %></td>
    <td><%=t.getUsuario() %></td>	
  </tr>

<%}%>

 </table> 
 </body>
</html>