package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.example.logic.Admin;
import com.example.logic.Agency;
import com.example.logic.Destiny;

public class DestinyDaoImpl implements DestinyDao {

	private  JdbcTemplate jdbcTemplate;

	@Override
	public List<Destiny> listAllDestiny() {
		// TODO Auto-generated method stub


		// TODO Auto-generated method stub		
		String sql = "SELECT idDestino, nombreDestino, estadoDestino FROM destino";

		List<Destiny> listDestiny = jdbcTemplate.query(sql, new RowMapper<Destiny>() {


			public Destiny mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Destiny aDestiny = new Destiny();

				aDestiny.setIdDestino(rs.getInt("idDestino"));
				aDestiny.setNombreDestino(rs.getString("nombreDestino"));
				aDestiny.setEstadoDestino(rs.getInt("estadoDestino"));
				return aDestiny;
			}

		});		 
		return listDestiny;
	}



	@Override
	public void addDestiny(Destiny destiny) {

		String sql = "INSERT INTO destino(nombreDestino,estadoDestino) values (?, ?)";

		jdbcTemplate.update(sql,destiny.getNombreDestino(),	destiny.getEstadoDestino());	
		

	}

	@Override
	public void updateDestiny(Destiny destiny) {
		String sql = "UPDATE destino SET nombreDestino = '" + destiny.getNombreDestino()
		+ "' WHERE idDestino = "+ destiny.getIdDestino();
		jdbcTemplate.update(sql);
	}

	@Override
	public void deleteDestiny(Destiny destiny) {
		// TODO Auto-generated method stub

	}

	@Override
	public Destiny findDestinyById(int id) {
		String sql = "SELECT * FROM destino WHERE idDestino = " + id;
		List<Destiny> listContact = jdbcTemplate.query(sql, new RowMapper<Destiny>() {


			public Destiny mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Destiny aContact = new Destiny.BuildDestiny(rs.getString("nombreDestino"))
						.setEstadoDestino(rs.getString("estadoDestino").charAt(0))
						.build();
				aContact.setIdDestino(rs.getInt("idDestino"));		
				return aContact;
			}

		});		 

		return listContact.get(0);
	}

	@Override
	public void changeStateDestiny(int id, int state) {
		Destiny ag=findDestinyById(id);
		String sql = "UPDATE destino SET estadoDestino = '" + state 
				+ "' WHERE idDestino = "+ id +"";
				jdbcTemplate.update(sql);

	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
