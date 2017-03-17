package br.com.posgraduacao.revendacarros.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.posgraduacao.revendacarros.models.*;


@Repository
public class CarroDAO {
	@PersistenceContext
	private EntityManager manager;

	public List<Carro> all() {
		return manager.createQuery("select c from Carro c", Carro.class).getResultList();
	}

	public void save(Carro carro) {
		manager.persist(carro);
	}

	public Carro findById(Integer id) {
		return manager.find(Carro.class, id);
	}

	public void remove(Carro carro) {
		manager.remove(carro);
	}

	public void update(Carro carro) {
		manager.merge(carro);
	}

	public PaginatedList paginated(int page, int max) {
		return new PaginatorQueryHelper().list(manager, Carro.class, page, max);
	}
}
