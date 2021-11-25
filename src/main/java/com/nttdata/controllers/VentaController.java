package com.nttdata.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nttdata.models.Usuario;
import com.nttdata.models.Venta;
import com.nttdata.services.VentaService;

@Controller
@RequestMapping("/venta")
public class VentaController {
	
	@Autowired
	VentaService ventaService;
	
	@RequestMapping("")
	public String venta(@ModelAttribute("venta") Venta venta, Model model) {
		
		model.addAttribute("listaVentas", ventaService.obtenerListaVentas());
		
		return "venta/venta";
		
	}
	
	@RequestMapping("loginv")
	public String loginv(@Valid@ModelAttribute("venta") Venta venta) {
		
		
		ventaService.insertarVenta(venta);
		return "redirect:/venta";
		
	}
	
	@RequestMapping("/eliminar")
	public String eliminarVenta(@RequestParam("id")Long id) {
		
		Venta venta = ventaService.buscarVentaId(id);
		
		if(venta !=null) {
			
			ventaService.eliminarProductoObjeto(venta);
		}
		
		return "redirect:/venta";
	}
	
	//llamar para editar
	@RequestMapping("/editar")
	public String editarVenta(@RequestParam("id") Long id, Model model) {
		Venta venta = ventaService.buscarVentaId(id);
		if(venta != null) {
			
			model.addAttribute("venta", venta);
			return "venta/editarV";
		}
		return "redirect:usuario";
	}

	
	

}
