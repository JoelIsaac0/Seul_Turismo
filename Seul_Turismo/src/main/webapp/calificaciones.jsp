<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.info.BBDD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seul/Calificaciones</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<section class="textos">
			<td><img src="imagenes/seul.png" width="600" height="600"></td>
			<nav>
				<a href="index.jsp">Principio</a> <a href="hospedaje.jsp">Hospedaje</a>
				<a href="turismo.jsp">Atracciones Turisticas</a> <a
					href="comida.jsp">Comida Tipica</a> 
					<a href="comollegar.jsp">Mapa</a> <a
					href="formulario.jsp">Formulario</a>
			</nav>
		</section>
	</header>
	<br>
	<br>
	<br>	
	<section class="textos">
		<div class="contener_tabla" style="border: 1pt solid #fbb; text-align: center;">
			<%
			Usuario use = new Usuario();
			Puntos punt = new Puntos();
			out.print(punt.consultarNotas());
			%>
		</div>
	</section>
</body>
</html>