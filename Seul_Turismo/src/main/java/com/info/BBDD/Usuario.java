package com.info.BBDD;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.info.datos.Conexion;
public class Usuario {

	private String nombre;
	private String calf;
	private String comen;


	public String ingresarUsuario(String nombre,String calf,String comen)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_calf(nombreu,i_calf,sugerencia) VALUES(?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, nombre);
			pr.setString(2,calf);
			pr.setString(3,comen);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String consultarUsuarios()
	{
		String sql="SELECT * FROM tb_calf";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Nombre</th><th>Calf</th><th>Comentario</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getString(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getCalf() {
		return calf;
	}

	public void setCalf(String calf) {
		this.calf = calf;
	}

	public String getComen() {
		return comen;
	}

	public void setComen(String comen) {
		this.comen = comen;
	}

}
