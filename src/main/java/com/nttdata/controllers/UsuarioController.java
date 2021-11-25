package com.nttdata.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nttdata.models.Usuario;
import com.nttdata.services.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@Autowired //INYECCION DE DEPENDENCIAS
	UsuarioService usuarioService;
	
	//desplegar inicialmente el jsp
		@RequestMapping("")
		public String usuario(@ModelAttribute("usuario") Usuario usuario,Model model) {
			
			
			//lista de usuario
			
			//List<Usuario> listaUsuarios = usuarioService.obtenerListaUsuarios();
			
			model.addAttribute("listaUsuarios", usuarioService.obtenerListaUsuarios());
			//model.addAttribute("usuario", usuario1);
			return "usuario/usuario";
		}
		
		
		//capturr¿ar la info de formulario
		@RequestMapping("/login")
		public String login(@Valid@ModelAttribute("usuario") Usuario usuario) {
			//System.out.println(usuario.getNombre()+" "+usuario.getApellido()+" "+usuario.getLimite()+" "+usuario.getCodigoPostal());
			
			usuarioService.insertarUsuario(usuario);
			return "redirect:/usuario";
			
			
		}
		
		@RequestMapping("/eliminar")
		public String eliminarUsuario(@RequestParam("id") Long id) {
			
			Usuario usuario = usuarioService.buscarUsuarioId(id);
			
			if(usuario !=null) {
				
				usuarioService.eliminarUsuarioObjeto(usuario);
			}
			
				
			return "redirect:/usuario";
			
		}
		
		//llamar para editar
				@RequestMapping("/editar")
				public String editarUsuario(@RequestParam("id") Long id, Model model) {
					Usuario usuario = usuarioService.buscarUsuarioId(id);
					if(usuario != null) {
						
						model.addAttribute("usuario", usuario);
						return "usuario/editarU";
					}
					return "redirect:usuario";
				}
				
				
			 @RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
				    public String update(@Valid@ModelAttribute("usuario") Usuario usuario, BindingResult result) {
				    	System.out.println("Update");
				        
				        	usuarioService.updateUsuario(usuario);
				            return "redirect:/usuario";
				        }
				    
	
}
