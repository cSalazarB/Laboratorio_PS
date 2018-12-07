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
import com.example.logic.Reserva;

public class ReservaDao implements InterfaceDao<Reserva> {

	private JdbcTemplate jdbcTemplate;

	public List<Reserva> listAll() {
		String sql = "SELECT idAdmin, nombre, apellidoAdmin, correoAdmin, estadoAdmin FROM admin";

		List<Reserva> listContact = jdbcTemplate.query(sql, new RowMapper<Reserva>() {

			public Reserva mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Reserva aContact = new Reserva.BuildReserva(rs.getInt("idPaquete"), rs.getInt("idCliente"))
						.setprecioReserva(rs.getDouble("precioReserva"))
						.setFechaSalida(rs.getInt("diaSalida"), rs.getInt("mesSalida"), rs.getInt("anioSalidad"))
						.setFechaRegreso(rs.getInt("diaRegreso"), rs.getInt("mesRegreso"), rs.getInt("anioRegreso"))
						.setFechaReserva(rs.getInt("diaReserva"), rs.getInt("mesReserva"), rs.getInt("anioReserva"))
						.setNumPersonas(rs.getInt("numPersonasReserva")).build();
				aContact.setIdReserva(rs.getInt("idReserva"));
				return aContact;
			}

		});
		return listContact;
	}

	public void add(Reserva t) {
		String sql = "INSERT INTO reserva(idPaquete,idCliente,precioReserva,diaSalidad,mesSalida"
				+ ",anioSalida,diaRegreso,mesRegreso,anioRegreso"
				+ ",diaReserva,mesReserva,anioReserva,numPersonasReserva) values (?,?,?,?,?,?,?,?,?)";

		jdbcTemplate.update(sql,t.getIdPaquete(),
				t.getIdCliente(),
				t.getPrecioReserva(),
				t.getDiaSalida(),
				t.getMesSalida(),
				t.getDiaRegreso(),
				t.getMesRegreso(),
				t.getAnioRegreso(),
				t.getDiaReserva(),
				t.getMesReserva(),
				t.getAnioReserva(),
				t.getNumPersonasReserva()
				);
	}

	public void update(Reserva t) {
		// TODO Auto-generated method stub

	}

	public void delete(Reserva t) {
		// TODO Auto-generated method stub

	}

	public Reserva findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void changeState(int id, char state) {
		// TODO Auto-generated method stub

	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
