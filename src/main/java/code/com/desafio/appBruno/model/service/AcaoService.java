package code.com.desafio.appBruno.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import code.com.desafio.appBruno.model.domain.Acao;
import code.com.desafio.appBruno.model.repository.AcaoRepository;

@Service
public class AcaoService {
	
	@Autowired
	private AcaoRepository acaoRepository;
		
	public List<Acao> obterLista(){
		return (List<Acao>) acaoRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	public List<Acao> obterLista(String campo){
		return (List<Acao>) acaoRepository.findAll(Sort.by(Sort.Direction.ASC, campo));
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
