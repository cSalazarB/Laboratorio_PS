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


public class ActividadDao implements InterfaceDao<Actividad>{

	private  JdbcTemplate jdbcTemplate; 
	public List<Actividad> listAll() {
		String sql = "SELECT idActividad, idPaquete, nombreActividad, tiempoActividad, horaActividad FROM actividad";
		List<Actividad> listContact = jdbcTemplate.query(sql, new RowMapper<Actividad>() {


			public Actividad mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Actividad aContact = new Actividad.BuildActividad(rs.getString("nombreActividad")).setHora(rs.getString("horaActividad"))
						.setIdPaquete(rs.getInt("idPaquete")).setTiempoActividad(rs.getInt("tiempoActividad")).build();		
				aContact.setIdActividad(rs.getInt("idActividad"));
				return aContact;
			}

		});		 
		return listContact;
	}

	public void add(Actividad t) {
		String sql = "INSERT INTO actividad(idPaquete,nombreActividad,tiempoActividad,horaActividad) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sql,
				t.getIdPaquete(),
				t.getNombreActivad(),
				t.getTiempoActividad(),
				t.getHoraActividad()
				);
	}

	public void update(Actividad t) {
		String sql = "UPDATE actividad SET idPaquete = '" + t.getIdPaquete()
		+ "', nombreActividad = '" + t.getNombreActivad()
		+ "', tiempoActividad = '" + t.getTiempoActividad()
		+ "', horaActividad = '" + t.getHoraActividad()
		+ "' WHERE idAdmin = "+ t.getIdPaquete()+"";

		jdbcTemplate.update(sql);
		
	}

	public void delete(Actividad t) {
		String sql ="DELETE FROM actividad WHERE idActividad = ? ";
		jdbcTemplate.update(sql, t.getIdActividad());
		
	}

	public Actividad findById(int id) {
		String sql = "SELECT * FROM actividad WHERE idAdmin = " + id;
		List<Actividad> listContact = jdbcTemplate.query(sql, new RowMapper<Actividad>() {


			public Actividad mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Actividad aContact = new Actividad.BuildActividad(rs.getString("nombreActividad")).build();		
				aContact.setIdActividad(rs.getInt("idAdmin"));
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
