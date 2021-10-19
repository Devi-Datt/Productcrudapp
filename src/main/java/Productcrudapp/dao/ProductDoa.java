package Productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Productcrudapp.model.Product;

@Repository
public class ProductDoa {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void saveProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}

	// Get All Product
	public List<Product> getAllProduct() {
		List<Product> loadAll = this.hibernateTemplate.loadAll(Product.class);
		return loadAll;
	}

//Delete the Single product
	@Transactional
	public void deleteProduct(int pid) {
		Product product = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}

	// get single product

	public Product getProduct(int id) {
		Product p = this.hibernateTemplate.get(Product.class, id);
		return p;
	}

}
