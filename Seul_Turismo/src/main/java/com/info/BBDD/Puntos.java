package com.info.BBDD;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.info.datos.*;
public class Puntos {
	private int orden;
	private int val1;
	private int val2;
	private int val3;
	private int val4;
	private int val5;
	private int valtotal;
	private String nombreu;
	
	public int getOrden() {
		return orden;
	}
	public void setOrden(int orden) {
		this.orden = orden;
	}
	public int getVal1() {
		return val1;
	}
	public void setVal1(int val1) {
		this.val1 = val1;
	}
	public int getVal2() {
		return val2;
	}
	public void setVal2(int val2) {
		this.val2 = val2;
	}
	public int getVal4() {
		return val4;
	}
	public void setVal4(int val4) {
		this.val4 = val4;
	}
	public int getVal3() {
		return val3;
	}
	public void setVal3(int val3) {
		this.val3 = val3;
	}
	public int getVal5() {
		return val5;
	}
	public void setVal5(int val5) {
		this.val5 = val5;
	}
	public int getValtotal() {
		return valtotal;
	}
	public void setValtotal(int valtotal) {
		this.valtotal = valtotal;
	}

	
	public String ingresarPuntos( String nombre,int n1, int n2, int n3, int n4,int n5,int nfinal) {
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_notas (nombreu,val1,"
				+ "val2,val3,val4,val5,valtotal) "
				+ "VALUES(?,?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1,nombre);
			pr.setInt(2,n1);
			pr.setInt(3,n2);
			pr.setInt(4,n3);
			pr.setInt(5,n4);
			pr.setInt(6,n5);
			pr.setInt(7,nfinal);
			
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
	
	public String getNombreu() {
		return nombreu;
	}
	public void setNombreu(String nombreu) {
		this.nombreu = nombreu;
	}
	
	public String consultarNotas()
	{
		String sql="SELECT * FROM tb_notas ORDER BY valtotal DESC";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Nombre</th><th>Nota Final</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getString(7)+"</td>"
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
}
