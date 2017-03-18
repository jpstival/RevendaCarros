package br.com.posgraduacao.revendacarros.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.posgraduacao.revendacarros.models.PaginatedList;
import br.com.posgraduacao.revendacarros.models.Venda;

@Repository
public class VendaDao {
	@PersistenceContext
	private EntityManager manager;

	public List<Venda> all() {
		return manager.createQuery("select p from Pessoa p", Venda.class).getResultList();
	}

	public void save(Venda venda) {
		manager.persist(venda);
	}

	public Venda findById(Integer id) {
		return manager.find(Venda.class, id);
	}

	public void remove(Venda venda) {
		manager.remove(venda);
	}

	public void update(Venda venda) {
		manager.merge(venda);
	}

	public PaginatedList paginated(int page, int max) {
		return new PaginatorQueryHelper().list(manager, Venda.class, page, max);
	}
}
