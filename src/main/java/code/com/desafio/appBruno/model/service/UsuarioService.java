package code.com.desafio.appBruno.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import code.com.desafio.appBruno.model.domain.Usuario;
import code.com.desafio.appBruno.model.repository.UsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
		
	public List<Usuario> obterLista(){
		return (List<Usuario>) usuarioRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	public List<Usuario> obterLista(String campo){
		return (List<Usuario>) usuarioRepository.findAll(Sort.by(Sort.Direction.ASC, campo));
	}
	
	public void incluir(Usuario usuario) {
		usuarioRepository.save(usuario);
	}
	
	public void excluir(Integer id) {
		usuarioRepository.deleteById(id);
		
	}
		
	public Usuario obterPorId(Integer id) {	
		return usuarioRepository.findById(id).orElse(null);
	}
	
	public Usuario validar(String email, String senha) {
		
		Usuario usuario = usuarioRepository.autenticacao(email, senha);
		
		return usuario;
	}

}
