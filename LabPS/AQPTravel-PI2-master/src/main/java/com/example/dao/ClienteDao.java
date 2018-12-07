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

import java.util.List;

import com.example.logic.Actividad;
import com.example.logic.Admin;
import com.example.logic.Customer;

public class ClienteDao implements InterfaceDao<Customer>{
	
	private  JdbcTemplate jdbcTemplate; 
	
	
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}



	public List<Customer> listAll() {
		String sql = "SELECT idComentario, idPaquete, comentario, idCliente FROM comentarios";
		List<Customer> listContact = jdbcTemplate.query(sql, new RowMapper<Customer>() {


			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Customer aContact = new Customer.BuildCustomer(rs.getString("nombreCliente"),rs.getString("correoCliente"))
						.setLastName(rs.getString("apellidoCliente"))
						.setEmail(rs.getString("correoCliente"))
						.setPhone(rs.getString("telefonoCLiente"))
						.build();
				aContact.setIdCustomer(rs.getInt("idCliente"));
				return aContact;
			}

		});		 
		return listContact;
	}



	public void add(Customer t) {
		addUserForRole(t.getEmail(),t.getPassword());
		addRole(t.getEmail());
		String sql = "INSERT INTO cliente(nombreCliente, apellidoCliente, correoCliente, telefonoCliente, contrasenaCliente) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sql,
				t.getName(),
				t.getLastname(),
				t.getEmail(),
				t.getPhone(),
				t.getPassword()
				);
	}

	public void update(Customer t) {
		String sql = "UPDATE cliente SET nombreCliente = '" + t.getName()
		+ "', apellidoCliente = '" +t.getLastname()
		+ "', correoCliente = '" + t.getEmail()
		+ "', telefonoCliente = '" + t.getPhone()
		+ "', estadoCliente = '" + t.getState()
		+ "', contrasenaCliente = '" + t.getPassword()
		+ "' WHERE idComentario = "+t.getIdCustomer()+"";
		if('0'==t.getState()) {
			updateStateRole(t.getEmail(),1);
		}
		if('1'==t.getState()) {
			updateStateRole(t.getEmail(),0);
		}
		jdbcTemplate.update(sql);
		
	}



	public void delete(Customer t) {
		String sql ="DELETE FROM cliente WHERE idCliente = ? ";
		jdbcTemplate.update(sql, t.getIdCustomer());
		
	}



	public Customer findById(int id) {
		String sql = "SELECT * FROM cliente WHERE idCliente = " + id;
		List<Customer> listContact = jdbcTemplate.query(sql, new RowMapper<Customer>() {


			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Customer aContact = new Customer.BuildCustomer(rs.getString("nombreCliente"),rs.getString("correoCliente"))
						.setLastName(rs.getString("apellidoCliente"))
						.setPhone(rs.getString("telefonoCLiente"))
						.setPassword(rs.getString("contrasenaCliente"))
						.build();
				aContact.setIdCustomer(rs.getInt("idCliente"));
				return aContact;
			}
		});
		return listContact.get(0);
	}



	public void changeState(int id, char state) {
		Customer cu=findById(id);
		if('0'==state) {
			updateStateRole(cu.getEmail(),1);
		}
		if('1'==state) {
			updateStateRole(cu.getEmail(),0);
		}
		String sql = "UPDATE cliente SET estadoCliente = '" + state 
				+ "' WHERE idCliente = "+ id +"";
				jdbcTemplate.update(sql);
		
	}
	public boolean checkByEmail(String val) {
		Integer cnt = jdbcTemplate.queryForObject(
			    "SELECT * FROM cliente WHERE correoCliente = "+val, Integer.class);
			return cnt != null && cnt > 0;
	}
	public Customer findByEmail(String val) {
		String sql = "SELECT * FROM cliente WHERE correoCliente = " + val;
		List<Customer> listContact = jdbcTemplate.query(sql, new RowMapper<Customer>() {


			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Customer aContact = new Customer.BuildCustomer(rs.getString("nombreCliente"),rs.getString("correoCliente"))
						.setPassword(rs.getString("contrasenaCliente"))
						.build();
				aContact.setIdCustomer(rs.getInt("idCliente"));
				return aContact;
			}
		});
		return listContact.get(0);
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
				"ROLE_CU");
	}
	private void updateStateRole(String email,int id) {
		String sql = "UPDATE usuario SET enable = '" + id 
				+ "' WHERE correoUsuario = '"+ email +"'";
		jdbcTemplate.update(sql);
	}

}
