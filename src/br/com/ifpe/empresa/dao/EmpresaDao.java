package br.com.ifpe.empresa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.ifpe.empresa.model.Empresa;

public class EmpresaDao {
	
	private static final String PERSISTENCE_UNIT = "empresa";

	public void salvar(Empresa empresa) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(empresa);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
	
	@SuppressWarnings("unchecked")
	public List<Empresa> listar() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<Empresa> lista = manager.createQuery("FROM Empresa ORDER BY descricao").getResultList();
		manager.close();
		factory.close();
		return lista;
	}

}
