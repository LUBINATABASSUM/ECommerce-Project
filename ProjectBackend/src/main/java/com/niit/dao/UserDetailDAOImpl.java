package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Repository("userDetailDAO")
@Transactional

public class UserDetailDAOImpl implements UserDetailDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean registerUser(UserDetail userDetail) {
		try
		{
		
		Session session=sessionFactory.openSession();
		session.save(userDetail);
		return true;
		}
		catch(Exception e) {
		
		return false;
	}
	}

	public boolean deleteUser(UserDetail userDetail) {
		try
		{
			sessionFactory.getCurrentSession().delete(userDetail);
			return true;
			
		}
		catch(Exception e) {
			
		
		return false;
	}
	}

	public boolean updateUser(UserDetail userDetail) {
		try
		{
			sessionFactory.getCurrentSession().update(userDetail);
			return true;
			
		}
		catch(Exception e) {
			
		
		return false;
	}
	}
	public UserDetail getUser(String username) {
	
		Session session=sessionFactory.openSession();
		UserDetail userDetail=(UserDetail)session.get(UserDetail.class, username);
		session.close();
		
		return userDetail;
	}

	
	
	
}


