package code.com.desafio.appBruno.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import code.com.desafio.appBruno.model.domain.Usuario;
import code.com.desafio.appBruno.model.service.UsuarioService;


@SessionAttributes("user")
@Controller
public class AcessoController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = {"/","/login"})
	public String telaLogin() {
		return "login";
	}
	
	@GetMapping(value = "/logout")
	public String telaLogout(HttpSession session, SessionStatus status) {
		
		status.setComplete();
		session.removeAttribute("user");
		
		return "redirect:/";
	}

	
	@PostMapping(value = "/login")
	public String login(Model model, @RequestParam String email, @RequestParam String senha) {
		
		Usuario usuario = usuarioService.validar(email, senha);
		
		if(usuario != null) {
			
			model.addAttribute("user", usuario);
			
			return "index";
		} else {
			
			model.addAttribute("mensagem", "Autenticação inválida");
			
			return "login";
		}
		
		
		
		
	}
	
}
