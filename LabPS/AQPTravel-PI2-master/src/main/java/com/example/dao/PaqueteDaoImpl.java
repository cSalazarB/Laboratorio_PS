package com.example.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.logic.Admin;
import com.example.logic.FotosPaquete;
import com.example.logic.Paquete;
@Repository
public class PaqueteDaoImpl implements PaqueteDao {
	
	private  JdbcTemplate jdbcTemplate;

	@Override
	public List<Paquete> listAllPaquetes() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT idPaquete, idAgencia, nombrePaquete, numPaquete, estadoPaquete, destinoPaquete FROM paquete";

		List<Paquete> listPaquet = jdbcTemplate.query(sql, new RowMapper<Paquete>() {

			@Override
			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));
				aPaquet.setIdAgencia(rs.getInt("idAgencia"));				
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));				
				aPaquet.setNumPaquete(rs.getInt("numPaquete"));					
				aPaquet.setEstadoPaquete(rs.getString("estadoPaquete").charAt(0));				
				aPaquet.setDestinoPaquete(rs.getString("destinoPaquete"));
				
				return aPaquet;
			}

		});		 
		return listPaquet;
	}

	@Override	
	public int addPaquete(Paquete paquete) {	
		 
		 GeneratedKeyHolder holder = new GeneratedKeyHolder();
		 KeyHolder keyHolder = new GeneratedKeyHolder();
		 
		    this.jdbcTemplate.update(new PreparedStatementCreator() {
		       
				@Override
				public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					// TODO Auto-generated method stub
					PreparedStatement ps = connection.prepareStatement(
		                    "insert into paquete (idAgencia, nombrePaquete, "
		                    + "precioPaquete, precioOferta, "
		                    + "capacidadPaquete, descripcionPaquete,"
		                    + " numPaquete, estadoPaquete, ofertaPaquete,"
		                    + " tiempoOferta, destinoPaquete, valoracionPaquete,"
		                    + " duracionPaquete, itenerario, servicios,"
		                    + " recomendacionesPaquete, tipoPaquete, diaModPaquete, mesModPaquete, anioModPaquete) "
		                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,? ,? ,? )",
		                    new String[] { "id" });					
		            
		            ps.setInt(1, paquete.getIdAgencia());
		            ps.setString(2, paquete.getNombrePaquete());
		            ps.setDouble(3, paquete.getPrecioPaquete());
		            ps.setDouble(4,  paquete.getPrecioOferta());
		            ps.setInt(5, paquete.getCapacidadPaquete());		            
		            ps.setString(6, paquete.getDescripcionPaquete());
		            ps.setInt(7, paquete.getNumPaquete());
		            ps.setString(8, Character.toString(paquete.getEstadoPaquete()));
		            ps.setString(9, Character.toString(paquete.getOfertaPaquete()));
		            ps.setInt(10, paquete.getTiempoOferta());
		            ps.setString(11, paquete.getDestinoPaquete());
		            ps.setInt(12, paquete.getValoracionPaquete());
		            ps.setInt(13, paquete.getDuracionPaquete());
		            ps.setString(14, paquete.getItinerario());
		            ps.setString(15, paquete.getServicios());
		            ps.setString(16, paquete.getRecomendaciones());	
		            ps.setString(17, paquete.getTipoPaquete());	
		            ps.setInt(18, paquete.getDiaModPaquete());	
		            ps.setInt(19, paquete.getMesModPaquete());	
		            ps.setInt(20, paquete.getAnioModPaquete());	
		            return ps;
				}
				
		    }, keyHolder);
		    
		    int id = keyHolder.getKey().intValue();
		    
		    return id;
		    
	}
	
	@Override
	public String getNombreAgencia(int id) {
		
		String nombreAgencia = jdbcTemplate.queryForObject(
			    "SELECT nombreAgencia FROM Agencia WHERE idAgencia="+id, String.class);
		return  nombreAgencia;
	}

	@Override
	public List<Paquete> ordernarPorFecha() {
		String sql = "SELECT * From paquete order by  anioModPaquete DESC, MesModPaquete DESC, diaModPaquete DESC  LIMIT 0, 20";

		List<Paquete> listPaquet = jdbcTemplate.query(sql, new RowMapper<Paquete>() {

			@Override
			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));
				aPaquet.setIdAgencia(rs.getInt("idAgencia"));				
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));				
				aPaquet.setNumPaquete(rs.getInt("numPaquete"));					
				aPaquet.setEstadoPaquete(rs.getString("estadoPaquete").charAt(0));				
				aPaquet.setDestinoPaquete(rs.getString("destinoPaquete"));
				
				aPaquet.setAnioModPaquete(rs.getInt("anioModPaquete"));
				aPaquet.setMesModPaquete(rs.getInt("MesModPaquete"));
				aPaquet.setDiaModPaquete(rs.getInt("diaModPaquete"));
				
				String nombreAgencia = jdbcTemplate.queryForObject(
					    "SELECT nombreAgencia FROM Agencia WHERE idAgencia=" + aPaquet.getIdAgencia(), String.class);
				aPaquet.setNombreAgencia(nombreAgencia);
				
				return aPaquet;			
		
			}

		});		 
		return listPaquet;
	}
	
	

	@Override
	public void updatePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Paquete findPaqueteById(int id) {
		// TODO Auto-generated method stub
		
		return null;
	}
	
	@Override
	public List<FotosPaquete> getImagePaquete(int idPaquete) {
		// TODO Auto-generated method stub
		String sql = "SELECT idFotos, nombreFoto, imagenFoto FROM fotospaquete WHERE idPaquete = " + idPaquete;
		List<FotosPaquete> listFotoPaquete = jdbcTemplate.query(sql, new RowMapper<FotosPaquete>() {

			public FotosPaquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				FotosPaquete afotoPaquete = new FotosPaquete();
				afotoPaquete.setIdFoto(rs.getInt("idFotos"));
				afotoPaquete.setNombreFoto(rs.getString("nombreFoto"));
				afotoPaquete.setImagenFoto(rs.getBytes("imagenFoto"));
				return afotoPaquete;
			}

		});		

		return listFotoPaquete;		
	}
	
	
	
	@Override
	public void changeStatePaquete(int idPaquete, char state) {
		// TODO Auto-generated method stub
		System.out.println("state: "+ state);
		String sql = "UPDATE paquete SET estadoPaquete = '" + state 
				+ "' WHERE idPaquete = "+ idPaquete +"";

				int res = jdbcTemplate.update(sql);
				if(res == 1) 
					System.out.println("state: "+ state);
		
	}
	
	
	@Override
	public boolean addFotoPaquete(FotosPaquete foto) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO fotospaquete(idPaquete,nombreFoto,imagenFoto) values (?, ?, ?)";

		int res = jdbcTemplate.update(sql,foto.getIdPaquete(), foto.getNombreFoto(), foto.getImagenFoto());
		return (res != 0);
	}
	
	
	
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean addDestiny(int idPaquete, int idFoto) {
		String sql = "INSERT INTO fotospaquete(idPaquete,idDestino) values (?, ?)";
		int res = jdbcTemplate.update(sql,idPaquete, idFoto);
		return (res != 0);
		
	}

	@Override
	public void insertDestinations(int idPaquete, List<Integer> listDestiny) {
		// TODO Auto-generated method stub
		String sql = "insert into paquetedestino " +
				"(idPaquete, idDestino) VALUES (?, ?)";

			   jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					Integer idDestiny = listDestiny.get(i);
					ps.setInt(1, idPaquete);
					ps.setInt(2, idDestiny);
				}

				@Override
				public int getBatchSize() {
					return listDestiny.size();
				}
			  });
		
	}
	
	@Override
	public void insertOneDestiny(int idPaquete, int idDestiny) {
		// TODO Auto-generated method stub
		String nombreDestino = jdbcTemplate.queryForObject(
			    "SELECT nombreDestino FROM destino WHERE idDestino=" + idDestiny, String.class);
	
		String sql = "UPDATE paquete SET destinoPaquete = '" + nombreDestino 
				+ "' WHERE idPaquete = '"+ idPaquete +"'";
		jdbcTemplate.update(sql);	
		
	}
	
	
	
	
	/* request for filter paquet */

	@Override
	public List<Paquete> listFilterPaquetes(Paquete param) {
		// TODO Auto-generated method stub
		
		String query = "select distinct agencia.nombreAgencia, paquete.precioPaquete, "
				+ "paquete.nombrePaquete, paquete.tipoPaquete, paquete.capacidadPaquete, paquete.destinoPaquete,"
				+ " paquete.valoracionPaquete, paquete.idPaquete, paquete.ofertaPaquete "
				+ "from paquete, paquetedestino, destino, agencia where "
				+ "destino.nombreDestino LIKE '%"+param.getDestinoPaquete()+"%' and paquetedestino.idDestino = destino.idDestino "
				+ "AND paquete.idPaquete = paqueteDestino.idPaquete and agencia.idAgencia = paquete.idAgencia"
				+ " and (paquete.capacidadPaquete >= "+param.getCapacidadPaquete()+") and paquete.tipoPaquete like '%"+param.getTipoPaquete()+"%' "
				+ "and (paquete.duracionPaquete <= "+param.getDuracionPaquete()+") and paquete.ofertaPaquete like '"+param.getOfertaPaquete()+"' "
				+ " and paquete.estadoPaquete = '1' and (paquete.numPaquete > 0) order by paquete.idPaquete";
		List<Paquete> listPaquet = jdbcTemplate.query(query, new RowMapper<Paquete>() {

			@Override
			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));			
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));
				aPaquet.setValoracionPaquete(rs.getInt("valoracionPaquete"));
				aPaquet.setCapacidadPaquete(rs.getInt("capacidadPaquete"));
				aPaquet.setDescripcionPaquete(rs.getString("nombreAgencia"));
				aPaquet.setTipoPaquete(rs.getString("tipoPaquete"));
				aPaquet.setPrecioPaquete(rs.getDouble("precioPaquete"));
				aPaquet.setOfertaPaquete(rs.getString("ofertaPaquete").charAt(0));					
				aPaquet.setDestinoPaquete(rs.getString("destinoPaquete"));
				
				
				return aPaquet;
			}

		});		 
		return listPaquet;	
	}

	

}
