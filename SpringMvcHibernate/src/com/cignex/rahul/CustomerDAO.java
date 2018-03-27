package com.cignex.rahul;

import java.util.List;

public interface CustomerDAO {

	public List<Customer> getCustomer();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public Customer deleteCustomer(int id);
}
