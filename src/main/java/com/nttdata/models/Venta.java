package com.nttdata.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity	//representcion de la entidad modelo (entidad = tablas)
@Table(name="ventas")//nombre de la tabla en la bd
public class Venta {

	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) //auto incrementable
	private Long id;
	
	private String nombreVenta;
	private Integer montoVenta;
	private String codigoVenta;
	private String tipoVenta;
	
	
	//constructores
	
	public Venta() {
		super();
	}


	public Venta(Long id, String nombreVenta, Integer montoVenta, String codigoVenta, String tipoVenta) {
		super();
		this.id = id;
		this.nombreVenta = nombreVenta;
		this.montoVenta = montoVenta;
		this.codigoVenta = codigoVenta;
		this.tipoVenta = tipoVenta;
	}


	
	//getters and setters
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNombreVenta() {
		return nombreVenta;
	}


	public void setNombreVenta(String nombreVenta) {
		this.nombreVenta = nombreVenta;
	}


	public Integer getMontoVenta() {
		return montoVenta;
	}


	public void setMontoVenta(Integer montoVenta) {
		this.montoVenta = montoVenta;
	}


	public String getCodigoVenta() {
		return codigoVenta;
	}


	public void setCodigoVenta(String codigoVenta) {
		this.codigoVenta = codigoVenta;
	}


	public String getTipoVenta() {
		return tipoVenta;
	}


	public void setTipoVenta(String tipoVenta) {
		this.tipoVenta = tipoVenta;
	}
	
	
	
	
	
	
}
