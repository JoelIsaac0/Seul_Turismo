<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.info.BBDD.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORMULARIO</title>
</head>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
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
	<section class="textos">

		<h1>Por favor realice la siguiente Actividad</h1>

		<form action="resultado.jsp" method="post">
			<table class="textos">
				<tr>
					<td bgcolor="#384030">Nombre:</td>
					<td bgcolor="#384030"><input type="text" name="txtName"
						required /></td>
				</tr>
				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">Calificacion
						de la pagina:</td>
					<td bgcolor="#384030" , style="border: solid 3px black;"><select
						name="cmbQP" style="width: 120px">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option></td>
				</tr>
				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">Ayudanos
						con tu sugerencia:</td>
					<td bgcolor="#384030"><input type="text" name="txtSu"
						style="width: 300px; height: 200;" /></td>
				</tr>
			</table>
			<table class="textos">

				<h1>Cada pregunta tiene una ponderación de 1 punto</h1>
				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">La
						fundacion de Seul fue en:</td>
					<td bgcolor="#384030" , style="border: solid 3px black;"><input
						type="month" name="txtQ1" /></td>
				</tr>
				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">La
						ciudad de la que se habla en esta plataforma pertenece al Pais
						Asiatico:</td>
					<td bgcolor="#384030" , style="border: solid 3px black;"><input
						type="text" name="txtQ2" maxlength="19" /></td>
				</tr>

				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">La
						capital de Corea del Sur es:</td>
					<td bgcolor="#384030" , style="border: solid 3px black;"><select
						name="cmbQ3">
							<option value="Seul">Seul</option>
							<option value="Busan">Busan</option>
							<option value="Incheon">Incheon</option></td>
					</select>
				</tr>


				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">El
						hotel Hotel Skypark Central tiene un costo x noche de:</td>
					<td bgcolor="#384030" style="border: solid 4px black;"><input
						type="radio" name="rdQ4" value="uno" />$83 <input type="radio"
						name="rdQ4" value="dos" required />$104 <input type="radio"
						name="rdQ4" value="tres" />$112</td>
				</tr>

				<tr>
					<td bgcolor="#384030" , style="border: solid 3px black;">Seul
						esta conformado por ------- millones de habitantes</td>
					<td bgcolor="#384030" , style="border: solid 3px black;"><select
						name="cmbQ5">
							<option value="9776">9776</option>
							<option value="10123">10123</option>
							<option value="101123">101123</option></td>
					</select>
				</tr>
				<tr>
					<br>
					<td><input type="submit" /></td>
					<td><input type="reset" /></td>
				</tr>
			</table>
		</form>
	</section>
	<br>
	<br>
	<section>
		<td><nav class="boton">
				<a href="calificaciones.jsp">Calificaciones</a>
			</nav></td>
	</section>
	
	<section>
		<td><nav class="boton">
				<a href="resp.jsp">Sugerencias</a>
			</nav></td>
	</section>
	
		<footer>
		<h2 class="titulo_final">&copy; SEUL</h2>
		<h2 class="titulo_final">&copy; Joel Corrales</h2>
	</footer>
</body>
</html>