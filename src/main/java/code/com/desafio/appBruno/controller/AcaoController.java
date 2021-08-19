package code.com.desafio.appBruno.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import code.com.desafio.appBruno.model.domain.Acao;
import code.com.desafio.appBruno.model.service.AcaoService;

@Controller
public class AcaoController {
	
	@Autowired
	private AcaoService acaoService;
	
	@GetMapping(value = "/")
	public String inicializa() {
		return "index";
	}
	
	@GetMapping(value = "/acao")
	public String telaCadastro() {
		return "acao/cadastro";
	}
	
	@GetMapping(value = "/acao/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		Acao acaoExcluida = acaoService.obterPorId(id);
		
		acaoService.excluir(id);
		
		model.addAttribute("mensagem", "Ação " + acaoExcluida.getNome()+ " excluída com sucesso!!!");
		
		return obterLista(model);
	}
	
	@PostMapping(value = "/acao/incluir")
	public String incluir(Model model, Acao acao) {
		
		acaoService.incluir(acao);
		
		model.addAttribute("mensagem", "A Ação " + acao.getSigla() + " foi cadastrada com sucesso!!!");
		
		return obterLista(model);
	}
	
	@GetMapping(value = "/acao/consultar")
	public String consultar() {
		return "";
	}
	
	@GetMapping(value = "/acao/lista")
	public String obterLista(Model model) {
		
		model.addAttribute("acoes", acaoService.obterLista());
		
		return "acao/lista";
	}

}
