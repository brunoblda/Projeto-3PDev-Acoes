package code.com.desafio.appBruno.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import code.com.desafio.appBruno.model.domain.Usuario;
import code.com.desafio.appBruno.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/usuario/cadastro")
	public String telaCadastro() {
		return "usuario/cadastro";
	}
	
	@PostMapping(value = "/usuario/cadastro")
	public String incluir(Model model, Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		model.addAttribute("mensagem", " Ação " + usuario.getNome() + " foi cadastrada com sucesso!!!");
		
		return "redirect:/";

	}
	
	@GetMapping(value = "/usuario/home")
	public String mostrar() {
		
		return "usuario/home";
	}
	
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		Usuario usuarioExcluido = usuarioService.obterPorId(id);
		
		usuarioService.excluir(id);
		
		model.addAttribute("mensagem", " Usuario " + usuarioExcluido.getNome()+ " excluído com sucesso!!!");
		
		return "redirect:/logout";
	}
	
	

	

}
