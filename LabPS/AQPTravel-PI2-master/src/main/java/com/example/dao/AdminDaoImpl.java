package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.example.logic.Admin;
import com.example.logic.Rol;
import com.example.logic.User;
import com.example.logic.Utilidades;

@Repository
public class AdminDaoImpl implements AdminDao{

	private  JdbcTemplate jdbcTemplate; 	

	public List<Admin> listAllAdmin() {
		// TODO Auto-generated method stub		
		String sql = "SELECT * FROM admin";

		List<Admin> listContact = jdbcTemplate.query(sql, new RowMapper<Admin>() {


			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Admin aContact = new Admin.BuildAdmin(rs.getString("nombre")).setEmail(rs.getString("correoAdmin"))
						.setLastname(rs.getString("apellidoAdmin"))
						.setPassword(rs.getString("contrasenaAdmin")).build();		
				aContact.setIdAdmin(rs.getInt("idAdmin"));
				aContact.setState(rs.getString("estadoAdmin").charAt(0));
				return aContact;
			}

		});		 
		return listContact;
	}


	public void addAdmin(Admin admin){
		addUserForRole(admin.getEmail(),admin.getPassword());
		addRole(admin.getEmail());
		String sql = "INSERT INTO admin(nombre,apellidoAdmin,celularAdmin,correoAdmin,direccionAdmin,contrasenaAdmin) values (?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql,
				admin.getName(),
				admin.getLastname(),
				admin.getPhone(),
				admin.getEmail(),
				admin.getAddress(),
				admin.getPassword());		
	}

	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		String sql = "UPDATE admin SET nombre = '" + admin.getName()
		+ "', apellidoAdmin = '" + admin.getLastname()
		+ "', celularAdmin = '" + admin.getPhone()
		+ "', correoAdmin = '" + admin.getEmail()
		+ "', direccionAdmin = '" + admin.getAddress()
		+ "', contrasenaAdmin = '" + admin.getPassword()
		+ "', estadoAdmin = '" + admin.getState() + "' WHERE idAdmin = "+ admin.getIdAdmin()+"";
		updateStateRole(admin.getEmail(),admin.getState());
		jdbcTemplate.update(sql);

	}

	public void deleteAdmin(Admin admin) {		
		String sql ="DELETE FROM admin WHERE id = ? ";
		jdbcTemplate.update("DELETE FROM admin WHERE idAdmin = ?", new Object[] { admin.getIdAdmin() });
		// TODO Auto-generated method stub

	}

	public Admin findAdminById(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM admin WHERE idAdmin = '" + id+"'";
		List<Admin> listContact = jdbcTemplate.query(sql, new RowMapper<Admin>() {


			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Admin aContact = new Admin.BuildAdmin(rs.getString("nombre")).setLastname(rs.getString("apellidoAdmin")).setEmail(rs.getString("correoAdmin")).build();		
				aContact.setIdAdmin(rs.getInt("idAdmin"));
				return aContact;
			}

		});		 

		return listContact.get(0);		
	}

	public void changeStateAdmin(int idAdmin, char state){
		Admin ad=findAdminById(idAdmin);
		updateStateRole(ad.getEmail(),state);

		String sql = "UPDATE admin SET estadoAdmin = '" + state 
		+ "' WHERE idAdmin = '"+ idAdmin +"'";

		jdbcTemplate.update(sql);

	}
	public boolean checkByEmail(String val) {
		Integer cnt = jdbcTemplate.queryForObject(
			    "SELECT * FROM admin WHERE correoAdmin = '"+val+"'", Integer.class);
			return cnt != null && cnt > 0;
	}
	public Admin findAdminByEmail(String id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM admin WHERE correoAdmin = '" + id+"'";
		List<Admin> listContact = jdbcTemplate.query(sql, new RowMapper<Admin>() {


			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Admin aContact = new Admin.BuildAdmin(rs.getString("nombre")).setLastname(rs.getString("apellidoAdmin"))
						.setEmail(rs.getString("correoAdmin"))
						.setPassword(rs.getString("contrasenaAdmin")).build();
				
				aContact.setIdAdmin(rs.getInt("idAdmin"));
				return aContact;
			}

		});		 

		return listContact.get(0);		
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	private void addUserForRole(String email,String pass){
		String sql = "INSERT into usuario (correoUsuario,contrasenaUsuario) values (?, ?)";
		jdbcTemplate.update(sql,
				email,
				pass);
	}
	private void addRole(String email) {
		String sql = "INSERT into rol (correoUsuario,rol) values (?, ?)";
		jdbcTemplate.update(sql,
				email,
				"ROLE_ADMIN");
	}
	
	private void updateStateRole(String email,char id) {
		String sql = "UPDATE usuario SET enable = '" + id 
				+ "' WHERE correoUsuario = '"+ email +"'";
		jdbcTemplate.update(sql);
	}
	
	public User findUserByEmail(String c) {
		String sql = "SELECT * FROM usuario WHERE correoUsuario = '" + c +"'";
		List<User> listContact = jdbcTemplate.query(sql, new RowMapper<User>() {
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				User aContact = new User();
				aContact.setCorreoUsuario(rs.getString("correoUsuario"));
				aContact.setContrasena(rs.getString("contrasenaUsuario"));
				aContact.setEnable(rs.getInt("enable"));
				return aContact;
			}
		});		 
		return listContact.get(0);	
	}
	public String findRolByEmail(String c) {
		String sql = "SELECT * FROM rol WHERE correoUsuario = '" + c +"'";
		List<Rol> listContact = jdbcTemplate.query(sql, new RowMapper<Rol>() {
			public Rol mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Rol aContact = new Rol();
				aContact.setRol(rs.getString("rol"));
				aContact.setCorreoUsuario(rs.getString("correoUsuario"));
				aContact.setIdRol(rs.getInt("idRol"));
				return aContact;
			}

		});		 
		return listContact.get(0).getRol();
	}
}