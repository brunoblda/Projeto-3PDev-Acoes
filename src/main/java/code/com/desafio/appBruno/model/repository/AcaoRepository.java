package code.com.desafio.appBruno.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import code.com.desafio.appBruno.model.domain.Acao;

@Repository
public interface AcaoRepository extends CrudRepository<Acao, Integer> {

}
