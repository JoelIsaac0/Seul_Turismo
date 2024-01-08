<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.info.BBDD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seul/Respuesta</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<section class="textos">
			<td><img
				src="imagenes/seul.png" width="600" height="600"></td>
			<nav>
				<a href="index.jsp">Principio</a> <a href="hospedaje.jsp">Hospedaje</a>
				<a href="turismo.jsp">Atracciones Turisticas</a> <a
					href="comida.jsp">Comida Tipica</a> <a href="mapaI.jsp">Mapa
					Interactivo</a> <a href="comollegar.jsp">Como llegar</a>
					<a href="formulario.jsp">Formulario</a>
			</nav>
		</section>
	</header>
	
	<section>
                <div class="textos">
                <br>
                <br>
                <br>
                <h2>Calificacion de la Pagina y Sugerencias</h2>
                <br>
                <br>
                <br>
			<%
		
			Usuario use = new Usuario();
			out.print(use.consultarUsuarios());
			%>	
			</div>
			</section>	
</body>
</html>