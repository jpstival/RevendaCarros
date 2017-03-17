package br.com.posgraduacao.revendacarros.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.posgraduacao.revendacarros.models.*;

@Repository
public class EnderecoDao {

	@PersistenceContext
	private EntityManager manager;

	public List<Endereco> all() {
		return manager.createQuery("SELECT e FROM Endereco e", Endereco.class).getResultList();
	}

	public void save(Endereco endereco) {
		manager.persist(endereco);
	}

	public Endereco findById(Integer id) {
		return manager.find(Endereco.class, id);
	}

	public void remove(Endereco endereco) {
		manager.remove(endereco);
	}

	public void update(Endereco endereco) {
		manager.merge(endereco);
	}

	public PaginatedList paginated(int page, int max) {
		return new PaginatorQueryHelper().list(manager, Endereco.class, page, max);
	}
}