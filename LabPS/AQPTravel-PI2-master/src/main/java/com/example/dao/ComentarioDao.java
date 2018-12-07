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

import com.example.logic.Comentario;

public class ComentarioDao implements InterfaceDao<Comentario> {
	private  JdbcTemplate jdbcTemplate; 
	public List<Comentario> listAll() {
		String sql = "SELECT idComentario, idPaquete, comentario, idCliente FROM comentarios";
		List<Comentario> listContact = jdbcTemplate.query(sql, new RowMapper<Comentario>() {


			public Comentario mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Comentario aContact = new Comentario.BuildComentario()
						.setIdPaquete(rs.getInt("idPaquete"))
						.setComentario(rs.getString("comentario"))
						.setIdCliente(rs.getInt("idCliente"))
						.build();		
				aContact.setIdComentario(rs.getInt("idComentario"));
				return aContact;
			}

		});		 
		return listContact;
	}

	public void add(Comentario t) {
		String sql = "INSERT INTO comentarios(idPaquete, comentario, idCliente) VALUES (?,?,?)";
		jdbcTemplate.update(sql,
				t.getIdPquete(),
				t.getComentario(),
				t.getIdCliente()
				);
		
	}

	public void update(Comentario t) {
		String sql = "UPDATE comentarios SET idPaquete = '" + t.getIdPquete()
		+ "', comentario = '" +t.getComentario()
		+ "', idCliente = '" + t.getIdCliente()
		+ "' WHERE idComentario = "+t.getIdComentario()+"";
		jdbcTemplate.update(sql);
	}

	public void delete(Comentario t) {
		String sql ="DELETE FROM comentarios WHERE idComentario = ? ";
		jdbcTemplate.update(sql, t.getIdComentario());
		
	}

	public Comentario findById(int id) {
		String sql = "SELECT * FROM comentarios WHERE idComentario = " + id;
		List<Comentario> listContact = jdbcTemplate.query(sql, new RowMapper<Comentario>() {


			public Comentario mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Comentario aContact = new Comentario.BuildComentario()
						.setIdPaquete(rs.getInt("idPaquete"))
						.setComentario(rs.getString("comentario"))
						.setIdCliente(rs.getInt("idCliente"))
						.build();		
				aContact.setIdComentario(rs.getInt("idComentario"));
				return aContact;
			}

		});		 

		return listContact.get(0);
	}

	public void changeState(int id, char state) {
		// TODO Auto-generated method stub
		
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
