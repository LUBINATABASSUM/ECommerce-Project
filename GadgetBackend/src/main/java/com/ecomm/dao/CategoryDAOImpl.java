package com.ecomm.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Category;

@Repository("categoryDAO")
@Transactional

public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory=sessionFactory;
	}

	
	public boolean addCategory(Category category) {
		{
			try
			{
				Session session=sessionFactory.openSession();
				session.save(category);
				return true;
			}
			catch(Exception e) {
				System.out.println(e);
				return false;
			}
		}
		
	}

	
	public boolean deleteCategory(Category category) {
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(Exception e) {
			
		}
	
		return false;
	}

	
	public boolean updateCategory(Category category) {
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception e) {
			
		}
	
		return false;
	}
	
	public Category getCategory(int categoryId)
	{
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class, categoryId);
		session.close();
		return category;
		
				
		
	}

	
	public List<Category> listCategories() {
		Session session =sessionFactory.openSession();
		List<Category>listCategories=(List<Category>)session.createQuery("from Category").list();
				
				session.close();
		return listCategories;
	}

	
	
}
