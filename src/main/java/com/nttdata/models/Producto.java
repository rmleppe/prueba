package com.nttdata.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity	//representcion de la entidad modelo (entidad = tablas)
@Table(name="productos")//nombre de la tabla en la bd
public class Producto {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) //auto incrementable
	private Long id;
	
	private String nombreProducto;
	private String descripcion;
	private Integer valor;
	private Integer stock;
	
	
	//constructores
	public Producto() {
		super();
	}


	public Producto(Long id, String nombreProducto, String descripcion, Integer valor, Integer stock) {
		super();
		this.id = id;
		this.nombreProducto = nombreProducto;
		this.descripcion = descripcion;
		this.valor = valor;
		this.stock = stock;
	}

	
	//getters and setters

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNombreProducto() {
		return nombreProducto;
	}


	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public Integer getValor() {
		return valor;
	}


	public void setValor(Integer valor) {
		this.valor = valor;
	}


	public Integer getStock() {
		return stock;
	}


	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	
	
	
	
	
	
	
}
