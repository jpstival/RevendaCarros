package br.com.posgraduacao.revendacarros.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.posgraduacao.revendacarros.models.*;

@Repository
public class TelefoneDAO {
	@PersistenceContext
	private EntityManager manager;

	public List<Telefone> all() {
		return manager.createQuery("select t from Telefone t", Telefone.class).getResultList();
	}

	public void save(Telefone telefone) {
		manager.persist(telefone);
	}

	public Telefone findById(Integer id) {
		return manager.find(Telefone.class, id);
	}

	public void remove(Telefone telefone) {
		manager.remove(telefone);
	}

	public void update(Telefone telefone) {
		manager.merge(telefone);
	}

	public PaginatedList paginated(int page, int max) {
		return new PaginatorQueryHelper().list(manager, Telefone.class, page, max);
	}
}

