package code.com.desafio.appBruno.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Acao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	private String sigla;
	private boolean PNeON;
	private String setor;
	
	public Acao() {
		this.PNeON = true;
		this.setor = "bancario";
	}
	
	
	public Acao(String nome, String sigla) {
		this();
		this.nome = nome;
		this.sigla = sigla;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSigla() {
		return sigla;
	}
	public void setSigla(String sigla) {
		this.sigla = sigla;
	}
	
	public boolean isPNeON() {
		return PNeON;
	}
	public void setPNeON(boolean pNeON) {
		PNeON = pNeON;
	}
	public String getSetor() {
		return setor;
	}
	public void setSetor(String setor) {
		this.setor = setor;
	}
	
	@Override
	public String toString() {
		
		return "Ação: " + nome + " Sigla: "+ sigla;
		
	}
	
}
