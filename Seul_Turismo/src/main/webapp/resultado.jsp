<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.info.BBDD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seul/Resultados</title>
</head>
<body>
	<header>
		<section class="textos">
			<td><img src="imagenes/seul.png" width="600" height="600"></td>
			<nav>
				<a href="index.jsp">Principio</a> <a href="hospedaje.jsp">Hospedaje</a>
				<a href="turismo.jsp">Atracciones Turisticas</a> <a
					href="comida.jsp">Comida Tipica</a> <a href="mapaI.jsp">Mapa
					Interactivo</a> <a href="comollegar.jsp">Como llegar</a> <a
					href="formulario.jsp">Formulario</a>
			</nav>
		</section>
	</header>
	<%
	String name=request.getParameter("txtName");
	String su=request.getParameter("txtSu");
	String calf=request.getParameter("cmbQP");
	String p1=request.getParameter("txtQ1");
	String p2=request.getParameter("txtQ2");
	String p3=request.getParameter("cmbQ3");
 	String p4=request.getParameter("rdQ4");
 	String p5=request.getParameter("cmbQ5");

 	
 	int val1=0;
 	int val2=0;
 	int val3=0;
 	int val4=0;
 	int val5=0;
 	int valtotal=0;
 	
 	if(p1.equals("1394-08")){
 		val1=1;
 	}else{
 		val1=0;
 	}
 	
 	if(p2.equals("Corea Del Sur") || p2.equals("COREA DEL SUR") || p2.equals("corea del sur") || p2.equals("Corea del Sur")){
 		val2=1;
 	}else{
 		val2=0;
 	}
 	 	
 	if(p3.equals("Seul")){
 		val3=1;
 	}else{
 		val3=0;
 	}
 	
 	if(p4.equals("uno")){
 		val4=1;
 	}else{
 		val4=0;
 	}
 	
 	if(p5.equals("9776")){
 		val5=1;
 	}else{
 		val5=0;
 	}
 	
 	valtotal=val1+val2+val3+val4+val5;
 	
 	Puntos intento = new Puntos();
 	out.print(intento.ingresarPuntos( name, val1, val2, val3, val4, val5, valtotal));
 	Usuario usa = new Usuario();
 	out.print(usa.ingresarUsuario(name, calf,su));
 	response.sendRedirect("formulario.jsp");
 	%>
 	
</body>
</html>