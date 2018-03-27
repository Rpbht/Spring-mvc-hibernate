package com.cignex.rahul;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class CustomerDAOImp implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomer() {

		Session session = sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer order by firstName", Customer.class);
		List<Customer> myList = query.getResultList();
		return myList;

	}

	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);

	}

	@Override
	public Customer getCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();

		Customer customer = session.get(Customer.class, id);

		return customer;
	}

	@Override
	public Customer deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, id);
		session.delete(customer);
		return null;
	}

}
