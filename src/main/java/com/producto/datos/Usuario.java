package com.producto.datos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Usuario {
	private String nombre;
	private String cedula;
	private String correo;
	private String clave;
	private int estado;
	private Integer id_perfil;
	public String ingresarCliente()
	 {
	String result="";

	Conexion con=new Conexion();
	PreparedStatement pr=null;
	String sql= "INSERT INTO tb_usuario (id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
            + "VALUES (?, ?, ?, ?, ?, ?)";
	 try{
	 pr=con.getConexion().prepareStatement(sql);
	 pr.setInt(1,this.getId_perfil());
	 pr.setInt(2, this.getEstado());
	 pr.setString(3, this.getNombre());
	 pr.setString(4, this.getCedula());
	 pr.setString(5, this.getCorreo());
	 pr.setString(6, this.getClave());

	 if(pr.executeUpdate()==1)
	 {
	 result="Insercion correcta";
	 }
	 else
	 {
	 result="Error en insercion";
	 }
	 }
	catch(Exception ex)
	 {
		 result=ex.getMessage();
		 System.out.print(result);
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

	public String ingreso() throws SQLException {
		Conexion con=new Conexion();
		String insert = "INSERT INTO tb_usuario (id_us, id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
	              + "VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = null ;
				try {
					pstmt= con.getConexion().prepareStatement(insert);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		pstmt.setInt(1, 2);       // Assuming id_us is an int
		pstmt.setInt(2, 2);      // Assuming id_per is an int
		pstmt.setInt(3, getEstado());      // Assuming id_est is an int
		pstmt.setString(4, getNombre());
		pstmt.setString(5, getCedula());
		pstmt.setString(6, getCorreo());
		pstmt.setString(7, getClave());
		pstmt.executeUpdate();
		return insert;
		
	}
	public boolean verificarUsuario(String correo, String nclave) {
		{
			boolean respuesta=false;
			String sentencia= "Select * from tb_usuario where correo_us='"+correo+
			"' and clave_us='"+nclave+"';";
			//System.out.print(sentencia);
			try
			{
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next())
			{
			respuesta=true;
			this.setCorreo(correo);
			this.setClave(nclave);
			this.setId_perfil(rs.getInt(2));
			this.setNombre(rs.getString(4));
			}
			else
			{
			respuesta=false;
			rs.close();
			}
			}
			catch(Exception ex)
			{
			System.out.println( ex.getMessage());
			}
			return respuesta;
			}

	}
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        
	        Conexion conexion = new Conexion();
	        ResultSet rs = null;
	        String query = "SELECT * FROM tb_usuario";

	        try {
	            rs = conexion.Consulta(query);
	            out.println("<html><body>");
	            out.println("<h1>Lista de Usuarios</h1>");
	            out.println("<table border='1'>");
	            out.println("<tr><th>ID</th><th>Perfil</th><th>Estado</th><th>Nombre</th><th>Cédula</th><th>Correo</th><th>Clave</th></tr>");

	            while (rs.next()) {
	                out.println("<tr>");
	                out.println("<td>" + rs.getInt("id_us") + "</td>");
	                out.println("<td>" + rs.getInt("id_per") + "</td>");
	                out.println("<td>" + rs.getInt("id_est") + "</td>");
	                out.println("<td>" + rs.getString("nombre_us") + "</td>");
	                out.println("<td>" + rs.getString("cedula_us") + "</td>");
	                out.println("<td>" + rs.getString("correo_us") + "</td>");
	                out.println("<td>" + rs.getString("clave_us") + "</td>");
	                out.println("</tr>");
	            }

	            out.println("</table>");
	            out.println("</body></html>");
	        } catch (SQLException e) {
	            e.printStackTrace();
	            out.println("Error al obtener los usuarios: " + e.getMessage());
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                conexion.getConexion().close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	@Override
	public String toString() {
		return "Usuario [getCedula()=" + getCedula() + ", getClave()=" + getClave() + ", getCorreo()=" + getCorreo()
				+ ", getEstado()=" + getEstado() + ", getNombre()=" + getNombre() + "]";
	}


	public String getCedula() {
		return cedula;
			}

	public String getClave() {
		return clave;
	}

	public String getCorreo() {
		return correo;
	}

	public int getEstado() {
		return estado;
	}

	public String getNombre() {
		return nombre;
	}

	public Integer getId_perfil() {
		return id_perfil;
	}

	public void setId_perfil(Integer id_perfil) {
		this.id_perfil = id_perfil;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	} 
	 
}
