package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Product;

@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	
SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory=sessionFactory;
	}



	public boolean addProduct(Product product) {
		try
		{
			Session session=sessionFactory.openSession();
			session.save(product);
			return true;
			
		}
		catch(Exception e) {
			
		
		return false;
	}
	}

	public boolean deleteProduct(Product product) {
		try
		{
			
			sessionFactory.getCurrentSession().delete(product);
			return true;
	}
		catch(Exception e) {
			return false;
		}
	}

	public boolean updateProduct(Product product) {
            try {
		
		sessionFactory.getCurrentSession().update(product);
		return true;
	}
	catch(Exception e) {
		return false;
	}
}

	public Product getProduct(int productId) {
		
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,productId);
		session.close();
		
		return product;
	}

	public List<Product> listProducts() {
		Session session=sessionFactory.openSession();
		List<Product>listProducts=(List<Product>)session.createQuery("from Product").list();
		session.close();
		return listProducts;
	}
	
	

}
