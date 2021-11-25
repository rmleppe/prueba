package com.nttdata.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nttdata.models.Producto;
import com.nttdata.models.Venta;
import com.nttdata.services.ProductoService;

@Controller
@RequestMapping("/producto")
public class ProductoController {

	@Autowired //INYECCION DE DEPENDENCIAS
	ProductoService productoService;
	
	//desplegar inicialmente el jsp
		@RequestMapping("")
		public String producto(@ModelAttribute("producto") Producto producto,Model model) {
			
			
			//lista de productos
			
			
			
			model.addAttribute("listaProductos", productoService.obtenerListaProductos());
			//model.addAttribute("usuario", usuario1);
			return "producto/producto";
		}
		
		
		//capturr¿ar la info de formulario
		@RequestMapping("/loginp")
		public String loginp(@Valid@ModelAttribute("producto")Producto producto) {
			
			productoService.insertarProducto(producto);
			return "redirect:/producto";
			
			
		}
		
		@RequestMapping("/eliminar")
		public String eliminarProducto(@RequestParam("id") Long id) {
			
			Producto producto = productoService.buscarProductoId(id);
			
			if(producto !=null) {
				
				productoService.eliminarProductoObjeto(producto);
			}
			
				
			return "redirect:producto";
			
		}
		
		//llamar para editar
		@RequestMapping("/editar")
		public String editarProducto(@RequestParam("id") Long id, Model model) {
			
		
			Producto producto = productoService.buscarProductoId(id);
			if(producto != null) {
				
				model.addAttribute("producto", producto);
				return "producto/editarP";
			}
			return "redirect:producto";
		}
		
}
