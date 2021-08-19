package code.com.desafio.appBruno.model.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import code.com.desafio.appBruno.model.domain.Acao;
import code.com.desafio.appBruno.model.repository.AcaoRepository;

@Service
public class AcaoService {
	
	@Autowired
	private AcaoRepository acaoRepository;
		
	public List<Acao> obterLista(){
		return (List<Acao>) acaoRepository.findAll();
	}
	
	public void incluir(Acao acao) {
		acaoRepository.save(acao);
	}
	
	public void excluir(Integer id) {
		acaoRepository.deleteById(id);
		
	}
		
	public Acao obterPorId(Integer id) {	
		return acaoRepository.findById(id).orElse(null);
	}
		
		
}
